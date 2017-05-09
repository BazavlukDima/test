<?php
include("actions/config.php");

function getCountries($db)
{
    $query = "SELECT Code, Name FROM type";
    $res = mysqli_query($db, $query);

    return mysqli_fetch_all($res, MYSQLI_ASSOC);
}

$countries = getCountries($db);

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
                            <option disabled selected>Choose...</option>
                        </select>
                    </div>
                </div>
                <div class="form-group model-select">
                    <label for="name" class="col-sm-2 control-label">Model</label>
                    <div class="col-sm-6">
                        <select class="form-control" name="model" id="model">
                            <option disabled selected>Choose...</option>
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
    <!--<script src="js/main.js"></script>-->
    <script>
$(".city-select").hide();
$(".model-select").hide();
$(function(){
    $('#country').change(function() {
        $(".city-select").show();
        var code = $("#country").val();
        $.post( "actions/getSubtype.php", {code: code},function(data) {
            wrOption(data, '#city', '.city-select');
        });
    });

});
$(function(){

    $('#city').change(function() {
        $(".model-select").show();
        var code = $("#city").val();
        $.post('actions/getModels.php', {code: code}, function(data) {
            wrOption(data, '#model', '.model-select');
        });

    });

});
function wrOption(data, Wher, classToShow) {
          var obj = $.parseJSON(data);
          $.each(obj, function(key, val) 
          {
            $(Wher).append( "<option value='" + key + "'>" + val + "</option>" );
          });
          $(classToShow).fadeIn('slow');
        };
    </script>

</body>
</html>