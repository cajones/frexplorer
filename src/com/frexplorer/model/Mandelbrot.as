package com.frexplorer.model 
{
	import flash.geom.Matrix;
	/**
	 * ...
	 * @author 
	 */
	public class Mandelbrot implements IFractal 
	{
		
		public function Mandelbrot() 
		{
			
		}
		
		public function evaluate(xstep:Number, ystep:Number, width:Number, height:Number):Matrix 
		{
			var m:Matrix = new Matrix(width, height); 
			trace(m);
			return m;
		}
		
	}

}