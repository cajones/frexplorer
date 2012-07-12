package com.frexplorer.model 
{
	import flash.geom.Matrix;

	public class Mandelbrot implements IFractal 
	{
		public function Mandelbrot() 
		{
		}
		
		private var _values:FractalValues = new FractalValues({
			xmin: -2.25,
			xmax: 0.75,
		    ymin: -1.5,
			ymax: 1.5
		});
		
		public function getValues():FractalValues
		{
			return _values;
		}
		
		public function setValues(values:FractalValues):void
		{
			this._values = values;
		}
		
		public function evaluate(width:int, height:int, callback:Function):Array 
		{
			var xstep:Number = (_values.xmax - _values.xmin) / width;
			var ystep:Number = (_values.ymax - _values.ymin) / height;
			
			var f:Array = new Array(height);
			for (var y:int = 0; y < f.length; y++) 
			{
				 var l:Array = new Array(width);
				 for (var x:int = 0; x < l.length; x++) 
				 {
					l[x] = callback(x, y, getPixel(_values.xmin + xstep * x, _values.ymax - ystep * y)); 
				 }
				 f[y] = l;
			}
			
			return f;
		}
	
		private function getPixel(x0:Number, y0:Number):uint
		{
			var x:Number = 0;
			var y:Number = 0;
			
			var iteration:int = 0;
			var maxIteration:int = 36;
			
			while ( x*x + y*y < 2*2 && iteration < maxIteration ) 
			{
				var xtemp:Number = x * x - y * y + x0;
				y = 2 * x * y + y0;
				
				x = xtemp;
				
				iteration++;
			}
			return grayScale(iteration, maxIteration);
		}
		
		private function grayScale(value:int, max:int):uint 
		{
			var level:uint = (value / max) * 255;
			return level << 16 | level << 8 | level;
		}
	}

}