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
		
		public function setContext(ctx:Object):void 
		{
			this.context = ctx;
		}
		
		public function getContext():Object 
		{
			return context;
		}
		protected function defaults(obj:*, properties:Object):void {
           for (var i:Object in properties) {
				if(obj[i] == null)
					obj[i] = properties[i];
           }
       }
		public function render():void {
			//noop
		}
	}
}