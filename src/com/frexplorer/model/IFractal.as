package com.frexplorer.model 
{
	import flash.geom.Matrix;
	public interface IFractal 
	{
		function setValues(values:FractalValues):void;
		function getValues():FractalValues;
		function evaluate(width:int, height:int, callback:Function):Array; 
	}
}