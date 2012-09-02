package com.iomedia.CustomTextRendering
{
	import com.greensock.events.LoaderEvent;
	import com.greensock.loading.XMLLoader;

	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.text.Font;
	import flash.text.TextField;

	/**
	 * @author Patrick Mullady
	 */
	public class TextRender extends Sprite
	{
		private var xmlLoader : XMLLoader;
		private var sectionID : int = 0;
		private var data : XML;
		private var textFieldsArray : Array;
		private var textNode : XMLList;
		private var textField : TextField;
		private var textHolder : Sprite;

		public function TextRender()
		{
			addEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
		}

		private function onAddedToStage( e : Event ) : void
		{
			removeEventListener( Event.ADDED_TO_STAGE, onAddedToStage );
			loadFont( "assets/font/_LessGreaterEqual.swf" );
		}

		private function loadFont( url : String ) : void
		{
			var loader : Loader = new Loader();
			loader.contentLoaderInfo.addEventListener( Event.COMPLETE, fontLoaded );
			loader.load( new URLRequest( url ) );
		}

		private function fontLoaded( event : Event ) : void
		{
			var FontLibrary : Class = event.target.applicationDomain.getDefinition( "_LessGreaterEqual" ) as Class;
			Font.registerFont( FontLibrary._LessGreaterEqual );

			loadAndParseTempXML();
		}

		private function loadAndParseTempXML() : void
		{
			xmlLoader = new XMLLoader( "assets/test-data.xml", {name:"xmlData", onProgress:progressHandler, onComplete:onContentComplete, onError:errorHandler} );
			xmlLoader.load();
		}

		private function onContentComplete( e : LoaderEvent ) : void
		{
			data = xmlLoader.getContent( "xmlData" );
			textNode = data.section[sectionID].landing.children();

			textHolder = new Sprite();
			textFieldsArray = new Array();

			addChild( textHolder );

			textHolder.x = 100;
			textHolder.y = 75;

			for (var x:String in textNode)
			{
				var contentText : String = (textNode[x] as XML).toString();
				var bullet : MovieClip = null;
				var subbullet : MovieClip = null;

				if ((textNode[x] as XML).name() == "pagetitle")
				{
					textField = new TextField();
					textHolder.addChild( textField = CustomTextFormat.pageTitleTextField( contentText ) );
					textFieldsArray.push( textField );
				}
				else if ((textNode[x] as XML).name() == "subtitle")
				{
					textHolder.addChild( textField = CustomTextFormat.subtitleTextField( contentText ) );
					textFieldsArray.push( textField );
				}
				else if ((textNode[x] as XML).name() == "bodytext")
				{
					textHolder.addChild( textField = CustomTextFormat.bodyTextField( contentText ) );
					textFieldsArray.push( textField );
				}
				else if ((textNode[x] as XML).name() == "bullet")
				{
					bullet = new BulletGreen();
					textHolder.addChild( bullet );
					textHolder.addChild( textField = CustomTextFormat.bulletTextField( contentText ) );
					textField.x = 18;
					textFieldsArray.push( textField );
				}
				else if ((textNode[x] as XML).name() == "subbullet")
				{
					subbullet = new SubBulletGreen();
					textHolder.addChild( subbullet );
					textHolder.addChild( textField = CustomTextFormat.subBulletTextField( contentText ) );
					textField.x = 42;
					textFieldsArray.push( textField );
				}
				else if ((textNode[x] as XML).name() == "space")
				{
					var tempHeight : Number = Number( contentText );
					if ( tempHeight != 0 )
					{
						var space : Shape = new Shape();
						space.graphics.beginFill( 0xff00ff, 0 );
						space.graphics.drawRect( textField.x, 0, textField.width, tempHeight );
						space.graphics.endFill();
						textHolder.addChild( space );

						textFieldsArray.push( space );
					}
				}
				if (textFieldsArray.length > 0)
				{
					for (var i : int = 1; i < textFieldsArray.length; i++)
					{
						textFieldsArray[i].y = textFieldsArray[i - 1].y + textFieldsArray[i - 1].height;
					}
				}
				if (bullet)
				{
					bullet.x = textField.x - 11;
					bullet.y = textField.y + 16;
				}
				if (subbullet)
				{
					subbullet.x = textField.x - 7;
					subbullet.y = textField.y + 15;
				}
			}
		}

		private function errorHandler( e : LoaderEvent ) : void
		{
			trace( "there has been an error with the loading of the xml" );
		}

		private function progressHandler( e : LoaderEvent ) : void
		{
			trace( "LOADING: progress of xml loading" );
		}
	}
}
