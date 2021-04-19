<?php



$connection = mysqli_connect('localhost','root','','arena_bank');
if(!$connection)
{
    die('connection failed'.mysqli_error($connection));
}

?>