<?php
/*	if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{
	
    if (isset($_POST['Submit']))
    {
        
*/
	$con = mysqli_connect("localhost","root","","midn") or die("Connection error");
	$action = $_POST['action'];
	switch ($action){
		/*case "register":
        //todo : insert user
        $email = $_POST['Email'];
        $password = $_POST['Password'];
        $phone = $_POST['Phone'];
        $type = $_POST['type'];
        $sql = "INSERT INTO user(id,email, passwords,phoneno,type) value ('".$email."', '".$password."')";
        $res = mysqli_query($con, $sql);
        $response['success'] = $res;
        $response['username'] = $username;
        echo json_encode($response);
        break;
		*/
		case "login":
	$email = $_POST['Email'];
	$password=$_POST['Password'];
	$sql = "SELECT * FROM users WHERE email='$email' and passwords='$password'";
	
	$result=mysqli_query($con,$sql) or die("selection error");
	$res= array();
	$res["success"]=false;
	$re=array();
	while($row = mysqli_fetch_assoc($result)){
		$res["success"]= true;
		$res["users"]= $row["Email"];
		$res["users"]= $row["Password"];
		array_push($re, $row);
	}
	 echo json_encode($res);
	}

	/*if(mysqli_num_rows($con,$result) == 0)
	{
		$_SESSION['message']="user with that email doesnot exit";
		header("location: error.php");
	}

	else 
	{
		$row = mysqli_fetch_assoc($result);
		$_SESSION['Email'] = $row['Email'];
    	
		echo json_encode($row);
		
	}
	*/



	

?>

//shared preference
//postman
