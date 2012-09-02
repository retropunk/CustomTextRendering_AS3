package com.iomedia.utils
{
	import com.iomedia.model.Vo;

	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;


	/**
	 * @author Patrick Mullady
	 */
	public class TextInjection extends Sprite {
		public function TextInjection() {
			
		}
		
		public function injectSuperScript(txtFld:TextField, num:int):void
		{
			///find position and length of all text that occurs inside of superscript tags
			var strng:String = txtFld.text;
			var subScriptArray:Array = new Array();
			var subScriptPosition:int = -1;

			while (strng.indexOf('<sup>', subScriptPosition+1) > -1)
			{
				subScriptPosition = strng.indexOf('<sup>', subScriptPosition) + 1;
				var lngth:int = strng.substr(subScriptPosition, strng.indexOf('</sup>', subScriptPosition) - (subScriptPosition + String('<sup>').length)).length;
				subScriptArray.push(new Array(subScriptPosition, lngth));
			}			
			
			//make text superscript based on positioning above
			var txtformat:TextFormat = txtFld.getTextFormat();
			txtformat.font = Vo.supFont.fontName;
			txtformat.size = num;	
			for (var x:String in subScriptArray) txtFld.setTextFormat(txtformat, subScriptArray[x][0], subScriptArray[x][0] + (String('<sup>').length + String('</sup>').length + subScriptArray[x][1]));		

			///remove html tags
			while (txtFld.text.indexOf('<sup>') > -1) txtFld.replaceText(txtFld.text.indexOf('<sup>'), txtFld.text.indexOf('<sup>') + String('<sup>').length, '');
			while (txtFld.text.indexOf('</sup>') > -1) txtFld.replaceText(txtFld.text.indexOf('</sup>'), txtFld.text.indexOf('</sup>') + String('</sup>').length, '');	
		}
		
		public function injectBold(txtFld:TextField, num:int):void
		{
			///find position and length of all text that occurs inside of superscript tags
			var strng:String = txtFld.text;
			var subScriptArray:Array = new Array();
			var subScriptPosition:int = -1;

			while (strng.indexOf('<b>', subScriptPosition+1) > -1)
			{
				subScriptPosition = strng.indexOf('<b>', subScriptPosition) + 1;
				var lngth:int = strng.substr(subScriptPosition, strng.indexOf('</b>', subScriptPosition) - (subScriptPosition + String('<b>').length)).length;
				subScriptArray.push(new Array(subScriptPosition, lngth));
			}			
			
			//make text superscript based on positioning above
			var txtformat : TextFormat = txtFld.getTextFormat();
			txtformat.font = Vo.boldFont.fontName;
			txtformat.bold = true;
			txtformat.leading = -1;
			txtformat.size = num;	
			for (var x:String in subScriptArray) txtFld.setTextFormat(txtformat, subScriptArray[x][0], subScriptArray[x][0] + (String('<b>').length + String('</b>').length + subScriptArray[x][1]));		

			///remove html tags
			while (txtFld.text.indexOf('<b>') > -1) txtFld.replaceText(txtFld.text.indexOf('<b>'), txtFld.text.indexOf('<b>') + String('<b>').length, '');
			while (txtFld.text.indexOf('</b>') > -1) txtFld.replaceText(txtFld.text.indexOf('</b>'), txtFld.text.indexOf('</b>') + String('</b>').length, '');	
		}
		
		public function injectBoldWithDifferentColor(txtFld:TextField, _size:int, _color:int, _leading:int, _letterSpacing:int):void
		{
			///find position and length of all text that occurs inside of superscript tags
			var strng:String = txtFld.text;
			var subScriptArray:Array = new Array();
			var subScriptPosition:int = -1;

			while (strng.indexOf('<b>', subScriptPosition+1) > -1)
			{
				subScriptPosition = strng.indexOf('<b>', subScriptPosition) + 1;
				var lngth:int = strng.substr(subScriptPosition, strng.indexOf('</b>', subScriptPosition) - (subScriptPosition + String('<b>').length)).length;
				subScriptArray.push(new Array(subScriptPosition, lngth));
			}			
			
			//make text superscript based on positioning above
			var txtformat : TextFormat = txtFld.getTextFormat();
			txtformat.font = Vo.boldFont.fontName;
			txtformat.bold = true;
			txtformat.leading = _leading;
			txtformat.size = _size;
			txtformat.color = _color;
			txtformat.letterSpacing = _letterSpacing;
			for (var x:String in subScriptArray) txtFld.setTextFormat(txtformat, subScriptArray[x][0], subScriptArray[x][0] + (String('<b>').length + String('</b>').length + subScriptArray[x][1]));		

			///remove html tags
			while (txtFld.text.indexOf('<b>') > -1) txtFld.replaceText(txtFld.text.indexOf('<b>'), txtFld.text.indexOf('<b>') + String('<b>').length, '');
			while (txtFld.text.indexOf('</b>') > -1) txtFld.replaceText(txtFld.text.indexOf('</b>'), txtFld.text.indexOf('</b>') + String('</b>').length, '');	
		}
		
		public function injectSpecialCharacter(gTxtFld:TextField, num:int):void
		{
			
			var gStrng:String = gTxtFld.text;
			var gArray:Array = new Array();
			var gPosition:int = -1;

			while (gStrng.indexOf('(sc)', gPosition+1) > -1)
			{
				gPosition = gStrng.indexOf('(sc)', gPosition) + 1;			
				var glngth:int = gStrng.substr(gPosition, gStrng.indexOf('(/sc)', gPosition) - (gPosition + String('(sc)').length)).length;
				gArray.push(new Array(gPosition, glngth));	
			}	
			
			//make text superscript based on positioning above
			var gTxtformat:TextFormat = new TextFormat("_LessGreaterEqual"); 
			gTxtformat.size = num;
			gTxtFld.embedFonts = true;
						
			for (var x in gArray) gTxtFld.setTextFormat(gTxtformat, gArray[x][0], gArray[x][0] + (String('(sc)').length + String('(/sc)').length + gArray[x][1]));		

			///remove tags
			while (gTxtFld.text.indexOf('(sc)') > -1) gTxtFld.replaceText(gTxtFld.text.indexOf('(sc)'), gTxtFld.text.indexOf('(sc)') + String('(sc)').length, '');
			while (gTxtFld.text.indexOf('(/sc)') > -1) gTxtFld.replaceText(gTxtFld.text.indexOf('(/sc)'), gTxtFld.text.indexOf('(/sc)') + String('(/sc)').length, '');	
		}
		
		public function injectItalic(txtFld:TextField, num:int):void
		{
			///find position and length of all text that occurs inside of superscript tags
			var strng:String = txtFld.text;
			var subScriptArray:Array = new Array();
			var subScriptPosition:int = -1;

			while (strng.indexOf('(i)', subScriptPosition+1) > -1)
			{
				subScriptPosition = strng.indexOf('(i)', subScriptPosition) + 1;
				var lngth:int = strng.substr(subScriptPosition, strng.indexOf('(/i)', subScriptPosition) - (subScriptPosition + String('(i)').length)).length;
				subScriptArray.push(new Array(subScriptPosition, lngth));
			}			
			
			//make text superscript based on positioning above
			var txtformat : TextFormat = txtFld.getTextFormat();
			txtformat.font = Vo.italicFont.fontName;
			txtformat.bold = true;
			txtformat.size = num;	
			for (var x:String in subScriptArray) txtFld.setTextFormat(txtformat, subScriptArray[x][0], subScriptArray[x][0] + (String('(i)').length + String('(/i)').length + subScriptArray[x][1]));		

			///remove html tags
			while (txtFld.text.indexOf('(i)') > -1) txtFld.replaceText(txtFld.text.indexOf('(i)'), txtFld.text.indexOf('(i)') + String('(i)').length, '');
			while (txtFld.text.indexOf('(/i)') > -1) txtFld.replaceText(txtFld.text.indexOf('(/i)'), txtFld.text.indexOf('(/i)') + String('(/i)').length, '');	
		}
		
		public function injectBoldItalic(txtFld:TextField, num:int):void
		{
			///find position and length of all text that occurs inside of superscript tags
			var strng:String = txtFld.text;
			var subScriptArray:Array = new Array();
			var subScriptPosition:int = -1;

			while (strng.indexOf('(bi)', subScriptPosition+1) > -1)
			{
				subScriptPosition = strng.indexOf('(bi)', subScriptPosition) + 1;
				var lngth:int = strng.substr(subScriptPosition, strng.indexOf('(/bi)', subScriptPosition) - (subScriptPosition + String('(bi)').length)).length;
				subScriptArray.push(new Array(subScriptPosition, lngth));
			}			
			
			//make text superscript based on positioning above
			var txtformat : TextFormat = txtFld.getTextFormat();
			txtformat.font = Vo.italicBoldFont.fontName;
			txtformat.bold = true;
			txtformat.size = num;	
			for (var x:String in subScriptArray) txtFld.setTextFormat(txtformat, subScriptArray[x][0], subScriptArray[x][0] + (String('(bi)').length + String('(/bi)').length + subScriptArray[x][1]));		

			///remove html tags
			while (txtFld.text.indexOf('(bi)') > -1) txtFld.replaceText(txtFld.text.indexOf('(bi)'), txtFld.text.indexOf('(bi)') + String('(bi)').length, '');
			while (txtFld.text.indexOf('(/bi)') > -1) txtFld.replaceText(txtFld.text.indexOf('(/bi)'), txtFld.text.indexOf('(/bi)') + String('(/bi)').length, '');	
		}
	}
}
