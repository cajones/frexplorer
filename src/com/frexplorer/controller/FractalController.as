package com.frexplorer.controller 
{
	public class FractalController 
	{
		import com.frexplorer.messages.*;
		import com.frexplorer.model.IFractal;
		import com.mvc.View;
		import flash.events.Event;
		
		private var fractal:IFractal;
		private var view:View;
		
		public function FractalController(options:Object) 
		{
			options.mediator.on(NewFractalValuesWereSpecified.NEW_FRACTAL_VALUES_WERE_SPECIFIED, valuesWereChanged);
			fractal = options.model;
			view = options.view;
		}
		
		private function valuesWereChanged(e:NewFractalValuesWereSpecified):void 
		{
			this.fractal.setValues(e.values);
			this.view.render();
		}
	}

}