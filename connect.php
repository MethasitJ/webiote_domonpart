<?php
$conn = mysqli_connect("localhost","root","","teacher");

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}
?>