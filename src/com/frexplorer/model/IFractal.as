package com.frexplorer.model 
{
	import flash.geom.Matrix;
	public interface IFractal 
	{
		function evaluate(xstep:Number, ystep:Number, width:Number, height:Number):Matrix; 
	}
}