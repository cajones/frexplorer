package {
	import flash.display.*;
	import flash.text.*;
	
	public class Main extends Sprite {
		private var greeting:TextField = new TextField();

		public function Main():Void 
		{
			greeting.text = "Hello World";
			greeting.x = 100;
			greeting.y = 100;
			addChild(greeting);
		}
	}
}