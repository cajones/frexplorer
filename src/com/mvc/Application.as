package com.mvc 
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import com.mvc.View;
	
	public class Application 
	{
		private var _surface:Sprite;
		private var _views:Array = [];
		private var _controllers:Array = [];
		
		public function Application(surface:Sprite) 
		{
			_surface = surface;
		}
		
		public function addView(view:View):View
		{
			_views.push(view);
			_surface.addChild(view);
			return view;
		}
		
		public function addController(controller:Object):Object
		{
			_controllers.push(controller);
			return controller;
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