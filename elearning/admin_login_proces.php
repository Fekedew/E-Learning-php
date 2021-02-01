<?php
session_start();
$username = $_POST['username'];
$password = $_POST['password'];

if($username=="feke" && $password=="fekee")
{
	$_SESSION['admin_session'] = $username;
	header('location:user_list.php');
}
else
{
	header('location:admin_login.php');
} 

?>