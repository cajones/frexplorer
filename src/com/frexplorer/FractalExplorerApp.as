package com.frexplorer 
{
	import com.frexplorer.model.Mandelbrot;
	import com.frexplorer.view.*;
	import com.mvc.Application;
	import flash.display.Sprite;
	
	public class FractalExplorerApp extends Application 
	{
		public function FractalExplorerApp(surface:Sprite) 
		{
			super(surface);
			
			addView(new BackgroundView( {} ));
			
			addView(new HelloWorldView( {
				greeting: "Welcome to frexplorer",
				x: 5,
				y: 5
			}));
			
			addView(new FractalView( {
				fractal: new Mandelbrot(),
				x: 50,
				y: 50,
				width: 200,
				height: 200
			}));
		}
	}
}