<?php

include("../config.php");

function getModels($db)
{
    $code = mysqli_real_escape_string($db, $_POST['code']);

    $query = "SELECT ID, Name FROM models WHERE CountryCode = '$code'";
    $res = mysqli_query($db, $query);

    $data = '';
    while ($row = mysqli_fetch_assoc($res)) {
        $data[$row['ID']] = $row['Name'];
    }

    return $data;
}

if (!empty($_POST['code'])) {
    echo json_encode(getModels($db));
}