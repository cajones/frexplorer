package com.frexplorer 
{
	import com.frexplorer.controller.FractalController;
	import com.frexplorer.model.IFractal;
	import com.frexplorer.model.Mandelbrot;
	import com.frexplorer.view.*;
	import com.mvc.Application;
	import com.mvc.Mediator;
	import com.mvc.View;
	import flash.display.Sprite;
	
	public class FractalExplorerApp extends Application 
	{
		private var mediator:Mediator = new Mediator();
		private var fractal:IFractal;
		
		public function FractalExplorerApp(surface:Sprite) 
		{
			super(surface);
			
			this.fractal = new Mandelbrot();
			
			addView(new BackgroundView( {
				backgroundColour: 0xffffff
			}));
			
			addView(new SpecifyValuesView( {
				mediator: mediator,
				values: this.fractal.getValues(),
				x: 410,
				y: 20
			}));
			
			var fractalView:View = addView(new FractalView( {
				fractal: this.fractal,
				x: 0,
				y: 0,
				width: 360,
				height: 360
			}));
			
			addController(new FractalController( {
				mediator: mediator,
				model: this.fractal,
				view: fractalView
			}));
		}
	}
}