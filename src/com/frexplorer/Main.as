package com.frexplorer
{
	import flash.display.*;
	import com.mvc.*;
	import com.frexplorer.view.*;
		
	public class Main extends Sprite
	{
		private var _application:Application; //How do I destroy this?
		
		public function Main()
		{
			_application = new FractalExplorerApp(this);
			_application.start();
		}
	}
}