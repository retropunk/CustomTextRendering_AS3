package com.iomedia.CustomTextRendering
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;

	/**
	 * @author Patrick Mullady
	 */
	[SWF(backgroundColor="#FFFFFF", frameRate="30", width="1024", height="768")]
	public class Main extends Sprite
	{
		public function Main() : void
		{
			if (stage) init();
			else addEventListener( Event.ADDED_TO_STAGE, init );
		}

		public function init( e : Event = null ) : void
		{
			removeEventListener( Event.ADDED_TO_STAGE, init );

			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.SHOW_ALL;
			stage.fullScreenSourceRect = new Rectangle( 0, 0, 1024, 768 );

			var textClip : TextRender = new TextRender();
			addChild( textClip );
		}
	}
}
