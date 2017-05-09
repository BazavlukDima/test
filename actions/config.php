<?php
    $db = mysqli_connect("localhost", "root", "", "test") or die("No connection with DB");
mysqli_set_charset($db, "utf8") or die("Don't set charset of connection");
