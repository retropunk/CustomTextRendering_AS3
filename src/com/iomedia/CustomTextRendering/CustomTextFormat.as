package com.iomedia.CustomTextRendering
{
	import com.iomedia.utils.TextInjection;
	import com.iomedia.utils.TextFormatUtils;
	import com.iomedia.model.Vo;

	import flash.text.TextField;
	import flash.text.TextFormat;

	/**
	 * @author Patrick Mullady
	 */
	public class CustomTextFormat
	{
		public static function pageTitleTextField( str : String ) : TextField
		{
			var titleText : TextField = new TextField();
			TextFormatUtils.setSingleLineTextProperty( titleText );
			titleText.width = 1070;

			titleText.text = TextFormatUtils.addReturnToText( str );

			var titleTextFormat : TextFormat = new TextFormat();
			titleTextFormat.color = Vo.pageTitleTextBoldColor;
			titleTextFormat.size = Vo.pageTitleTextBoldSize;
			titleTextFormat.font = Vo.pageTitleTextBoldFont.fontName;
			titleTextFormat.leading = Vo.pageTitleTextBoldLeading;
			titleTextFormat.letterSpacing = Vo.pageTitleTextBoldSpacing;
			titleTextFormat.bold = true;

			titleText.setTextFormat( titleTextFormat );

			return  titleText;
		}

		public static function subtitleTextField( str : String ) : TextField
		{
			var titleText : TextField = new TextField();
			TextFormatUtils.setSingleLineTextProperty( titleText );
			titleText.width = 1070;

			titleText.text = TextFormatUtils.addReturnToText( str );

			var titleTextFormat : TextFormat = new TextFormat();
			titleTextFormat.color = Vo.subtitleTextColor;
			titleTextFormat.size = Vo.subtitleTextSize;
			titleTextFormat.font = Vo.subtitleTextFont.fontName;
			titleTextFormat.leading = Vo.subtitleTextLeading;
			titleTextFormat.letterSpacing = Vo.subtitleTextSpacing;
			titleTextFormat.bold = true;

			titleText.setTextFormat( titleTextFormat );

			return  titleText;
		}

		public static function bodyTextField( str : String ) : TextField
		{
			var titleText : TextField = new TextField();
			TextFormatUtils.setSingleLineTextProperty( titleText );
			titleText.width = 1070;

			titleText.text = TextFormatUtils.addReturnToText( str );

			var titleTextFormat : TextFormat = new TextFormat();
			titleTextFormat.color = Vo.bodyTextColor;
			titleTextFormat.size = Vo.bodyTextSize;
			titleTextFormat.font = Vo.bodyTextFont.fontName;
			titleTextFormat.leading = Vo.bodyTextLeading;
			titleTextFormat.letterSpacing = Vo.bodyTextSpacing;

			titleText.setTextFormat( titleTextFormat );

			var textInject : TextInjection = new TextInjection();
			textInject.injectBold( titleText, Vo.bodyTextSize );

			return  titleText;
		}

		public static function bulletTextField( str : String ) : TextField
		{
			var titleText : TextField = new TextField();
			TextFormatUtils.setSingleLineTextProperty( titleText );
			titleText.width = 880;

			titleText.text = TextFormatUtils.addReturnToText( str );

			var titleTextFormat : TextFormat = new TextFormat();
			titleTextFormat.color = Vo.landingBulletTextColor;
			titleTextFormat.size = Vo.landingBulletTextSize;
			titleTextFormat.font = Vo.landingBulletTextFont.fontName;
			titleTextFormat.leading = Vo.landingBulletTextLeading;
			titleTextFormat.letterSpacing = Vo.landingBulletTextSpacing;

			titleText.setTextFormat( titleTextFormat );

			var textInject : TextInjection = new TextInjection();
			textInject.injectBoldWithDifferentColor( titleText, Vo.landingBulletTextBoldSize, Vo.landingBulletTextBoldColor, Vo.landingBulletTextBoldLeading, Vo.landingBulletTextBoldSpacing );

			return  titleText;
		}

		public static function subBulletTextField( str : String ) : TextField
		{
			var titleText : TextField = new TextField();
			TextFormatUtils.setSingleLineTextProperty( titleText );
			titleText.width = 800;

			titleText.text = TextFormatUtils.addReturnToText( str );

			var titleTextFormat : TextFormat = new TextFormat();
			titleTextFormat.color = Vo.landingSubBulletTextColor;
			titleTextFormat.size = Vo.landingSubBulletTextSize;
			titleTextFormat.font = Vo.landingSubBulletTextFont.fontName;
			titleTextFormat.leading = Vo.landingSubBulletTextLeading;
			titleTextFormat.letterSpacing = Vo.landingSubBulletTextSpacing;

			titleText.setTextFormat( titleTextFormat );

			var textInject : TextInjection = new TextInjection();
			textInject.injectSuperScript( titleText, Vo.landingSubBulletTextSize );
			textInject.injectBoldWithDifferentColor( titleText, Vo.landingSubBulletTextBoldSize, Vo.landingSubBulletTextBoldColor, Vo.landingSubBulletTextBoldLeading, Vo.landingSubBulletTextBoldSpacing );

			return  titleText;
		}
	}
}
