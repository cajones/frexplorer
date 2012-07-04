package com.frexplorer {
	import flash.display.*;
	import flash.text.*;
	
	public class Main extends Sprite {
		private var greeting:TextField = new TextField();

		public function Main() {
			greeting.text = "Hello World";
			greeting.x = 100;
			greeting.y = 100;
			addChild(greeting);
		}
	}
}