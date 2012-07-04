package com.frexplorer
{
	import flash.display.*;
	import com.frexplorer.view.HelloWorldView;
	import com.mvc.View;
		
	public class Main extends Sprite
	{
		private var views:Array = [];
		
		public function Main()
		{
			addView(new HelloWorldView());
		}
		
		private function addView(view:View):void
		{
			views.push(view);
			addChild(view);
		}
		
		private function start():void
		{
			for (var i:int = 0; i < views.length; i++)
			{
				views[i].render();
			}
		}
	}
}