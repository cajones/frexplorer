package com.frexplorer.view 
{
	import com.frexplorer.model.IFractal;
	import com.mvc.View;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import flash.display.Bitmap
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.utils.getTimer;
	
	public class FractalView extends View 
	{
		private var Colour:Object = {
			red: 0xff0000,
			green: 0x00ff00,
			blue: 0x0000ff,
			white: 0xffffff,
			black: 0x000000
		};
		
		public function FractalView(context:Object) 
		{
			super(context);
		}
		
		override public function render():void 
		{
			this.x = context.x;
			this.y = context.y;
			
			if (!context.fractal is IFractal) return;
			
			
			var bitmap:BitmapData = new BitmapData(context.width, context.height, false, context.backgroundColour);
			
			var startingTime:Number = getTimer();
			var data:Array = context.fractal.evaluate(context.width, context.height, function(x:int, y:int, pixelData:Number):void {
				bitmap.setPixel(x, y, pixelData);
			});
			var endingTime:Number = getTimer();
			context.renderTimeInMilliseconds = endingTime - startingTime;
			
			addChild(new Bitmap(bitmap));
			
			renderStatistics();
		}
		private function renderPixel(x:int, y:int, pixelData:Number):void 
		{
			
		}
		private function renderStatistics():void 
		{
			var stats:TextField = new TextField();
			stats.text = context.renderTimeInMilliseconds + "ms";
			stats.setTextFormat(new TextFormat(null, 11, 0xffffff));
			addChild(stats);
		}
	}
}