<?php

namespace core;

/**
 * Class for working with database
 */
class DB
{
    protected $pdo;
    public function __construct($hostname, $login, $password, $database)
    {
        $this->pdo = new \PDO("mysql:host=$hostname;dbname=$database", $login, $password);
    }

    /**
     * select data from database
     * @param  string $tableName - table name
     * @param  string|array $fieldList - list of fields to select
     * @param  array|null $conditionArray - array of conditions
     * @return array|false
     */
    public function select($tableName, $fieldList = "*", $conditionArray = null)
    {
        if (is_string($fieldList))
            $fieldListString = $fieldList;
        if (is_array($fieldList))
            $fieldListString = implode(', ', $fieldList);

        $wherePartString = "";
        if (is_array($conditionArray)) {
            foreach ($conditionArray as $key => $value) {
                $parts[] = "$key = :$key";
            }
            $wherePartString = "WHERE " . implode(' AND ', $parts);
        }
        $res = $this->pdo->prepare("SELECT $fieldListString FROM $tableName $wherePartString");
        $res->execute($conditionArray);
        return $res->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function update($tableName, $newValuesArray, $conditionArray)
    {
        $setParts = [];
        $paramsArray = [];
        foreach ($newValuesArray as $key => $value) {
            $setParts[] = "$key = :set$key";
            $paramsArray['set' . $key] = $value;
        }
        $setPartString = implode(', ', $setParts);
        $whereParts = [];
        foreach ($conditionArray as $key => $value) {
            $whereParts[] = "$key = :$key";
            $paramsArray[$key] = $value;
        }
        $wherePartString = "WHERE " . implode(' AND ', $whereParts);

        $res = $this->pdo->prepare("UPDATE $tableName SET $setPartString $wherePartString");
        $res->execute($paramsArray);
    }

    public function insert($tableName, $newRowArray)
    {
        $fieldsArray = array_keys($newRowArray);
        $fieldListString = implode(', ', $fieldsArray);
        $values = array_values($newRowArray);
        $paramsArray = [];
        foreach ($newRowArray as $key => $value) {
            $paramsArray[] = ':' . $key;
        }
        $valuesListString = implode(', ', $paramsArray);
        $res = $this->pdo->prepare("INSERT INTO $tableName ($fieldListString) VALUES($valuesListString)");
        $res->execute($newRowArray);
        return $this->pdo->lastInsertId($tableName);
    }

    public function delete($tableName, $conditionArray)
    {
        $whereParts = [];
        foreach ($conditionArray as $key => $value) {
            $whereParts[] = "$key = :$key";
            $paramsArray[$key] = $value;
        }
        $wherePartString = "WHERE " . implode(' AND ', $whereParts);
        $res = $this->pdo->prepare("DELETE FROM $tableName $wherePartString");
        $res->execute($conditionArray);
    }
}