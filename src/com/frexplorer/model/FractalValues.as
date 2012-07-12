package com.frexplorer.model 
{
	public class FractalValues 
	{
		public function FractalValues(values:Object) 
		{
			xmin = values.xmin;
			xmax = values.xmax;
			ymin = values.ymin;
			ymax = values.ymax;
		}
		
		public var xmin:Number;
		public var xmax:Number;
		
		public var ymin:Number;
		public var ymax:Number;
	}
}