<?php

namespace core;

class Utils
{
    public static function filterArray($array, $fieldList)
    {
        $newArray = [];
        foreach ($array as $key => $value) {
            if (in_array($key, $fieldList))
                $newArray[$key] = $value;
        }
        return $newArray;
    }

    public static function sortByName($rows)
    {
        usort($rows, function ($a, $b) {
            return strcmp($a['name'], $b['name']);
        });
        return $rows;
    }

    public static function sortByPrice($rows)
    {
        usort($rows, function ($a, $b) {
            return $a['price'] - $b['price'];
        });
        return $rows;
    }

    public static function sortByDate($rows)
    {
        return array_reverse($rows);
    }

    public static function filterByName($rows, $name)
    {
        $name = strtolower($name);
        return array_filter($rows, function ($row) use ($name) {
            if (strpos(strtolower($row['name']), $name) !== false)
                return $row;
        });
    }

    public static function filterByPublisher($rows, $publisher_id)
    {
        return array_filter($rows, function ($row) use ($publisher_id) {
            if ($row['publisher_id'] == $publisher_id)
                return $row;
        });
    }

    public static function filterByCategories($rows, $categories_id)
    {
        return array_filter($rows, function ($row) use ($categories_id) {
            $array1 = $categories_id;
            $array2 = \models\CategoryList::getCategoryListByProductId($row['id']);
            if (array_intersect($array1, $array2) == $array1)
                return $row;
        });
    }

    public static function filterByPrice($rows, $price)
    {
        return array_filter($rows, function ($row) use ($price) {
            if ($row['price'] <= $price)
                return $row;
        });
    }

    public static function trimArray($array)
    {
        return array_filter($array, function ($value) {
            if (!is_array($value)) {
                return trim($value);
            }
            return $value;
        });
    }

    public static function moveItemToFirstPosition($array, $item)
    {
        $key = array_search($item, $array);
        if ($key !== false) {
            unset($array[$key]);
            array_unshift($array, $item);
        }
        return $array;
    }

    public static function addPhoto($photo, $path)
    {
        do {
            $fileName = uniqid() . '.jpg';
            $newPath = "files/$path/$fileName";
        }
        while (file_exists($newPath));
        move_uploaded_file($photo, $newPath);
        return $fileName;
    }

    public static function deletePhoto($fileName, $path)
    {
        $photoPath = "files/$path/" . $fileName;
        if (is_file($photoPath))
            unlink($photoPath);
    }
}