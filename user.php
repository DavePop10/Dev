<?php 
/**
* 

*/

require_once('dbconn.php');
class user
{
	public $firstname;
	public $lastname;
	public $email;
	public $pwd;
	/*public $pwd="";*/
	
	function login(){
		$hashPassword = self::hashPassword($this->pwd);
		$conn = dbconn();

		/*	$sql = "select id, firstname, email, timestamp from registration";
			$result = $conn->query($sql);
			$conn->close();
		*/
		$sql = "select * from registration where email = '".$this->email."' and password = '".$hashPassword."'";
		//$sql = "select * from registration";
		$result = $conn->query($sql);
		if ($result) {			  
			   	
			   $count = $result->num_rows;
			   return $count;
			}
			else {
			    return "Error: " . $sql . "<br>" . $conn->error;

			}
		$conn->close();
		

	}
		


		function hashPassword($pwd)   
		{
			$hash = md5(md5($pwd));
			return $hash;
		}

	function register()
		{
			$pwd_hash = self::hashPassword($this->pwd);
			$conn = dbconn();

			$sql = "INSERT INTO registration (firstname, lastname, email, password)
			VALUES ('$this->firstname','$this->lastname', '$this->email', '$pwd_hash')";

			//echo $sql;
			if ($conn->query($sql) === TRUE) {
			    //echo "New record created successfully";
			    return "success";
			} else {
			    return "Error: " . $sql . "<br>" . $conn->error;
			}

			$conn->close();

		}
		function message()
		{
		$conn = dbconn();

		$sql = "insert into contact (name,email,subject,message)
		values ('$this->name','$this->email','$this->subject','$this->message')";
		if ($conn->query($sql) === TRUE) {
			//echo "Message sent.";
		}else{
			return "Error: ". $sql ."<br>" . $conn->error;
		}

		$conn->close();
		}

}
 ?>