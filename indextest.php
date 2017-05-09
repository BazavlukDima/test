<?php
$db = mysqli_connect("localhost", "root", "", "test") or die("Нет соединения с БД");
mysqli_set_charset($db, "utf8") or die("Не установлена кодировка соединения");

function getCountries()
{
    global $db;
    $query = "SELECT Code, Name FROM type";
    $res = mysqli_query($db, $query);
    return mysqli_fetch_all($res, MYSQLI_ASSOC);
}

function getCities()
{
    global $db;
    $code = mysqli_real_escape_string($db, $_POST['code']);
    $query = "SELECT ID, Name FROM subt WHERE CountryCode = '$code'";
    $res = mysqli_query($db, $query);
    $data = '';
    while ($row = mysqli_fetch_assoc($res)) 
    {
        $data .= "<option value='{$row['ID']}'>{$row['Name']}</option>";
    }
    return $data;
}

function getModels()
{
    global $db;
    $code = mysqli_real_escape_string($db, $_POST['code']);
    $query = "SELECT ID, Name FROM models WHERE CountryCode = '$code'";
    $res = mysqli_query($db, $query);
    $data = '';
    while ($row = mysqli_fetch_assoc($res)) 
    {
        $data .= "<option value='{$row['ID']}'>{$row['Name']}</option>";
    }
    return $data;
}

if (!empty($_POST['code'])) 
{
    echo getCities();
    echo getModels();
    exit;
}

$countries = getCountries();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Form</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Select Form:</h1>
    <div class="container content">
        <div class="centered-top">
            <form class="form-horizontal" method="post" id="form">
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">Type</label>
                    <div class="col-sm-6">
                        <select class="form-control" name="country" id="country">
                            <option disabled selected>Choose...</option>
                            <?php foreach($countries as $country): ?>
                            <option value="<?=$country['Code']?>"><?=$country['Name']?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <div class="form-group city-select">
                    <label for="name" class="col-sm-2 control-label">Subtype</label>
                    <div class="col-sm-6">
                        <select class="form-control" name="city" id="city">
                        </select>
                    </div>
                </div>
                <div class="form-group model-select">
                    <label for="name" class="col-sm-2 control-label">Model</label>
                    <div class="col-sm-6">
                        <select class="form-control" name="model" id="model">
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-6">
                        <button type="submit" id="submit" class="btn btn-primary">Отправить</button>
                        <div></div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <script>
$(function(){

    $('#country').change(function() 
    {
        var code = $(this).val();
        alert(code);
        $('#city').load('index.php', {code: code}, function() 
        {
            $('.city-select').fadeIn('slow');
        });

    });

});
    </script>
    <script>
$(function(){

    $('#city').change(function() 
    {
        var code = $(this).val();
        $('#model').load('index.php', {code: code}, function() 
        {
            $('.model-select').fadeIn('slow');
        });

    });

});
    </script>

</body>
</html>