package com.iomedia.utils
{
	import flash.text.GridFitType;
	import flash.text.AntiAliasType;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextField;

	/**
	 * TextUtils
	 *
	 * @copyright 		2011 IOMEDIA Inc. www.io-media.com
	 * @author			Patrick Mullady
	 * @version			1.0
	 * @langversion		ActionScript 3.0 			
	 * @playerversion 	Flash 9.0.0
	 *
	 */
	public class TextFormatUtils
	{
		/**
		 * The <code>setSingleLineTextProperty()</code> method sets the <code>$txtField</code> properties 
		 * of the passed in TextField to a formatted single line with no word wrap. This works in conjunction with EMBED FONTS.
		 * 
		 * 
		 * 
		 * @param	_txtField	TextField
		 * 
		 */
		public static function setSingleLineTextProperty( _txtField : TextField ) : void
		{
			with(_txtField)
			{
				multiline = false;
				embedFonts = true;
				wordWrap = false;
				autoSize = TextFieldAutoSize.LEFT;
				antiAliasType = AntiAliasType.ADVANCED;
				gridFitType = GridFitType.SUBPIXEL;
				selectable = false;
				// border = true;
			}
		}

		/**
		 * The <code>addReturnToText()</code> method adds a hard return to the text if there is a \n found anywhere in the string.
		 * Use this along with XML text. It finds every instance of \n and replaces it with a hard return.
		 * @param	_str	String
		 * 
		 */
		public static function addReturnToText( _str : String ) : String
		{
			var search : RegExp = /\\n/g;
			var str : String = _str;
			return str.replace( search, "\n" );
		}

		public static function removeReturnFromText( _str : String ) : String
		{
			var search : RegExp = /\\n/g;
			var str : String = _str;
			return str.replace( search, " " );
		}
	}
}