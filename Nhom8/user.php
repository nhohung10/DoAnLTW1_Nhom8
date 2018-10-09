<?php
require "db.php";
require "config.php";
class User{
	public $username="";
	public $password = "";
	public function __construct($username,$password){
		$this->username = $username;
		$this->password = md5($password);
	}
	public function login()
	{
		$username = $this->username;
		$password = $this->password;
		$db = new Db;
		$us = $db->getUserName($username);
		if ($us!=NULL)
		{
			if ($username == $us['user'] && $password == $us['pass'])
			{
				return true;
			}
		}

	}
}
?>
