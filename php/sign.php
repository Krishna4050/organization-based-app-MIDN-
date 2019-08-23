<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{
	
    if (isset($_POST['Submit']))
    {
        

	$con = mysqli_connect("localhost","root","","midn") or die("Connection error");
	
	$email = $_POST['Email'];
	$password=$_POST['Password'];
	$sql = "SELECT * FROM users WHERE email='$email' and passwords='$password'";
	
	$result=mysqli_query($con,$sql) or die("selection error");

	if(mysqli_num_rows($con,$result) == 0)
	{
		$_SESSION['message']="user with that email doesnot exit";
		header("location: error.php");
	}

	else 
	{
		$row = mysqli_fetch_assoc($result);
		$_SESSION['Email'] = $row['Email'];
    	header("location: index.dart");
		
	}
}
}
	

?>
