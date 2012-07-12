package com.frexplorer.view 
{
	import com.frexplorer.messages.NewFractalValuesWereSpecified;
	import com.frexplorer.model.FractalValues;
	import com.mvc.View;
	import flash.display.SimpleButton;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class SpecifyValuesView extends View 
	{
		private var xmin:TextField;
		private var xmax:TextField;
		private var ymin:TextField;
		private var ymax:TextField;
		private var changeValues:SimpleButton;
		
		private var textFieldPrototype: Object = {
			x: 50,
			y: 50,
			height: 16,
			width: 90
		};
		public function SpecifyValuesView(context:Object) 
		{
			super(context);
		}
		
		override public function render():void 
		{
			defaults(context, {
				backgroundColour: 0x000000,
				textColour: 0xffffff
			});
			this.x = context.x;
			this.y = context.y;
			this.z = 1;
			
			xmin = createInputField( {
				prototype: textFieldPrototype,
				text: context.values.xmin
			});
			xmin.addEventListener(Event.CHANGE, handleChange);
			addChild(xmin);
			
			xmax = createInputField( {
				prototype: textFieldPrototype,
				text: context.values.xmax,
				x: textFieldPrototype.width * 2
			});
			xmax.addEventListener(Event.CHANGE, handleChange);
			addChild(xmax);
			
			ymin = createInputField( {
				prototype: textFieldPrototype,
				text: context.values.ymin,
				y: textFieldPrototype.x + textFieldPrototype.height * 2
			});
			ymin.addEventListener(Event.CHANGE, handleChange);
			addChild(ymin);
			
			ymax = createInputField({
				prototype: textFieldPrototype,
				text: context.values.ymax,
				x: textFieldPrototype.width * 2,
				y: textFieldPrototype.x + textFieldPrototype.height * 2
			});
			ymax.addEventListener(Event.CHANGE, handleChange);
			addChild(ymax);
		}
		
		private function handleChange(e:Event):void 
		{
			context.mediator.trigger(new NewFractalValuesWereSpecified(new FractalValues ({
				xmin: xmin.text,
				xmax: xmax.text,
				ymin: ymin.text,
				ymax: ymax.text
			})));
		}
		
		private function createInputField(options:Object):TextField 
		{
			defaults(options, options.prototype);
			
			var field:TextField = new TextField();
			field.border = true;
			field.backgroundColor = context.backgroundColour;
			field.width = 90;
			field.height = options.height;
			field.x = options.x;
			field.y = options.y;
			field.type = "input";
			field.multiline = true;
			field.setTextFormat(new TextFormat(null, 12, context.textColour));
			field.text = options.text;
			return field;
		}
	}

}