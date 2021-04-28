<?php
 
class Database{

	private $servername;
	private $username;
	private $password;
	private $dbname;

	protected function connect(){
		$this->servername = "localhost";
		$this->username = "root";
		$this->password = "";
		$this->dbname = "the-elite-videos";

		$db_connection = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
		return $db_connection;
	}

	protected function connectltk(){
		$this->servername = "localhost";
		$this->username = "root";
		$this->password = "";
		$this->dbname = "the-elite-ltk-videos";

		$db_connection = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
		return $db_connection;
	}

	protected function connectTutorial(){
		$this->servername = "localhost";
		$this->username = "root";
		$this->password = "";
		$this->dbname = "tutorial-videos";

		$db_connection = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
		return $db_connection;
	}

	protected function connectSingleSegment(){
		$this->servername = "localhost";
		$this->username = "root";
		$this->password = "";
		$this->dbname = "the-elite-single-segment-videos";

		$db_connection = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
		return $db_connection;
	}

	protected function connectPlayerColors(){
		$this->servername = "localhost";
		$this->username = "root";
		$this->password = "";
		$this->dbname = "player-colors";

		$db_connection = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
		return $db_connection;
	}

}