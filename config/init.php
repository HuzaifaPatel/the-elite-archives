<?php

function __autoload($class_name){

	if($class_name == "Template" || $class_name == "Database" || $class_name == 'Master'){
		require_once 'lib/'.$class_name. '.php';
	}else{
		require_once 'user/'.$class_name. '.php';
		// require_once 'procedure/GetPlayerNames.php';
		// require_once 'lib/Database.php';
	}
}