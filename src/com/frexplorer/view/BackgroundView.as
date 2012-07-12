package com.frexplorer.view 
{
	import com.mvc.View;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	/**
	 * ...
	 * @author 
	 */
	public class BackgroundView extends View 
	{
		
		public function BackgroundView(context:Object) 
		{
			super(context);
			
		}
	
		override public function render():void 
		{
			defaults(context, {
				width: stage.stageWidth,
				height: stage.stageHeight,
				transparent: false,
				backgroundColour: 0x000000
			});
			
			addChild(new Bitmap(new BitmapData(context.width, context.height, context.transparent, context.backgroundColour)));
		}
	}

}