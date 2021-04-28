<?php class Template extends Master{

	public $template;
	public $vars = array();
	public $colors = array();
	public function __construct($template){
		include_once 'main.php';
		$this->template = $template;

		foreach($this->playerColors() as $color){
			$player = $color['player'];
			$this->colors[$player] = $color['hexcode'];
		}

		// print_r($this->colors);
	}

	public function __get($key){
		return $this->vars[$key];
	}

	public function __set($key, $value){
		$this->vars[$key] = $value;
	}

	public function __toString(){
		extract($this->vars);
		chdir(dirname($this->template));
		ob_start();

		include basename($this->template);

		return ob_get_clean();
	}
}