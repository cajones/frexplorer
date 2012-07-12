package com.mvc 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	public class Mediator 
	{
		private var dispatcher:EventDispatcher = new EventDispatcher();
		
		public function Mediator() 
		{
			
		}
		
		public function trigger(event:Event):void 
		{
			dispatcher.dispatchEvent(event);
		}
		
		public function on(event:String, action:Function):void 
		{
			dispatcher.addEventListener(event, action);
		}
	}
}