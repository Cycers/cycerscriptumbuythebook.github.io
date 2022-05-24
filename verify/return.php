<?php 
session_start();
$con = mysqli_connect("localhost","root","","scriptum");

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $update = mysqli_query($con,"UPDATE orders SET processed = '3' WHERE order_id = '$id'");
    if($update){
        echo '<script>alert("Order cancelled");</script>';
        echo '<script>window.location.href = "http://localhost/scriptum/myaccount";</script>';
    } else {
        echo '<script>alert("Order could not be cancelled");</script>';
        echo '<script>window.location.href = "http://localhost/scriptum/myaccount";</script>';
    }
}
?>