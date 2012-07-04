package com.frexplorer.view 
{
	import flash.text.*;
	import com.mvc.View;
	
	public class HelloWorldView extends View {
		private var greeting:TextField = new TextField();

		public function HelloWorldView() {
			super( { } );
			greeting.text = "Hello World";
			greeting.x = 100;
			greeting.y = 100;
			addChild(greeting);
		}
		
		override public function render():void 
		{
			super.render();
		}
	}

}