package com.frexplorer.view 
{
	import com.frexplorer.model.IFractal;
	import com.mvc.View;
	
	import flash.display.Bitmap
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	
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
			var m:Matrix = context.fractal.evaluate(1,2,this.width, this.height);
			
			var bitmap:BitmapData = new BitmapData(context.width, context.height, false, Colour.black);
			
			for (var y:uint = 0; y < bitmap.height; y++) 
			{ 
				for (var x:uint = 0; x < bitmap.width; x++)
				{
					if (x % 4 == 0) {
						bitmap.setPixel(x, y, Colour.red);
					}
					if (y % 4 == 0) {
						bitmap.setPixel(x, y, Colour.green);
					}
				}
			} 
		 
			addChild(new Bitmap(bitmap)); 
		}
	}
}