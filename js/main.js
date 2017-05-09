$(function(){

    $('#country').change(function() 
    {
        var code = $(this).val();
        $('#city').load('index.php', {code: code}, function() 
        {
            $('.city-select').fadeIn('slow');
        });

    });

});
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