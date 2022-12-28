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
}