package com.frexplorer.messages 
{
	import com.frexplorer.model.FractalValues;
	import flash.events.Event;
	
	public class NewFractalValuesWereSpecified extends Event 
	{
		
		public static const NEW_FRACTAL_VALUES_WERE_SPECIFIED:String = "NewFractalValuesWereSpecified";
		public var values:FractalValues;
		
		public function NewFractalValuesWereSpecified(newValues:FractalValues) 
		{ 
			values = newValues;
			super(NEW_FRACTAL_VALUES_WERE_SPECIFIED, false, false);
		} 
		
		public override function clone():Event 
		{ 
			return new NewFractalValuesWereSpecified(this.values);
		} 
		
		public override function toString():String 
		{ 
			return formatToString(NEW_FRACTAL_VALUES_WERE_SPECIFIED, "type", "bubbles", "cancelable", "eventPhase"); 
		}
		
	}
	
}