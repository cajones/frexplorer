package com.mvc 
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import com.mvc.View;
	
	public class Application 
	{
		private var _surface:Sprite;
		private var _views:Array = [];
		
		public function Application(surface:Sprite) 
		{
			_surface = surface;
		}
		
		public function addView(view:View):void
		{
			_views.push(view);
			_surface.addChild(view);
		}
		
		public function start():void
		{
			for (var i:int = 0; i < _views.length; i++)
			{
				_views[i].render();
			}
		}
	}
}