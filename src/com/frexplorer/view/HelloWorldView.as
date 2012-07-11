package com.frexplorer.view 
{
	import flash.text.*;
	import com.mvc.View;
	
	public class HelloWorldView extends View {
		private var greeting:TextField = new TextField();

		public function HelloWorldView(context:Object) {
			super( context );
		}
		
		override public function render():void 
		{
			defaults(context, {
				greeting: "Hello World",
				format: new TextFormat("sans serif", 26, 0xffffff, true),
				x: 0,
				y: 0
			});
			
			greeting.text = context.greeting;
			greeting.setTextFormat(context.format);
			this.x = context.x;
			this.y = context.y;
			greeting.width = greeting.textWidth*2;
			greeting.height = greeting.textHeight*2;
			addChild(greeting);
			super.render();
		}
	}

}