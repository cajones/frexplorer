package com.mvc 
{
	import flash.display.Sprite;
	public class View extends Sprite
	{
		protected var context:Object;
		
		public function View(context:Object) 
		{
			this.context = context;
		}
		
		public function render():void {
			//noop
		}
	}
}