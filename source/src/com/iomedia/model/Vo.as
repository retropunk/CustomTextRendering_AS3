package com.iomedia.model
{
	import flash.text.Font;
	import flash.display.Sprite;

	/**
	 * @author Patrick Mullady
	 */
	public class Vo extends Sprite
	{
		// colors that are used in the application
		public static var brown : int = 0x645953;
		public static var green : int = 0x58AA18;
		public static var blue : int = 0x003399;
		public static var red : int = 0xFF0000;
		public static var white : int = 0xFFFFFF;
		public static var grey : int = 0xAAA9A7;
		// ====================================
		// pagetitle
		// ====================================
		public static var pageTitleTextBoldColor : int = blue;
		public static var pageTitleTextBoldSize : int = 32;
		public static var pageTitleTextBoldFont : Font = new Hel_MedExtended();
		public static var pageTitleTextBoldLeading : int = 2;
		public static var pageTitleTextBoldSpacing : Number = -.9;
		// ====================================
		// subtitle
		// ====================================
		public static var subtitleTextColor : int = green;
		public static var subtitleTextSize : int = 26;
		public static var subtitleTextFont : Font = new Hel_BoldExtended();
		public static var subtitleTextLeading : int = +1;
		public static var subtitleTextSpacing : Number = 0;
		// ====================================
		// bodytext
		// ====================================
		public static var bodyTextColor : int = brown;
		public static var bodyTextSize : int = 24;
		public static var bodyTextFont : Font = new Hel_Roman();
		public static var bodyTextLeading : int = 0;
		public static var bodyTextSpacing : Number = -.3;
		// ====================================
		// bullet
		// ====================================
		public static var landingBulletTextColor : int = brown;
		public static var landingBulletTextSize : int = 24;
		public static var landingBulletTextFont : Font = new Hel_Roman();
		public static var landingBulletTextLeading : int = 0;
		public static var landingBulletTextSpacing : Number = -.3;
		public static var landingBulletTextBoldColor : int = blue;
		public static var landingBulletTextBoldSize : int = 22;
		public static var landingBulletTextBoldFont : Font = new Hel_Bold();
		public static var landingBulletTextBoldLeading : int = 0;
		public static var landingBulletTextBoldSpacing : Number = -.9;
		// ====================================
		// subbullet
		// ====================================
		public static var landingSubBulletTextColor : int = brown;
		public static var landingSubBulletTextSize : int = 21;
		public static var landingSubBulletTextFont : Font = new Hel_Roman();
		public static var landingSubBulletTextLeading : int = 0;
		public static var landingSubBulletTextSpacing : Number = -.3;
		public static var landingSubBulletTextBoldColor : int = blue;
		public static var landingSubBulletTextBoldSize : int = 21;
		public static var landingSubBulletTextBoldFont : Font = new Hel_Bold();
		public static var landingSubBulletTextBoldLeading : int = 0;
		public static var landingSubBulletTextBoldSpacing : Number = -.9;
		// for text injection
		public static var supFont : Font = new SuperScript();
		public static var starFont : Font = new Hel_Extended();
		public static var boldFont : Font = new Hel_Bold();
		public static var italicFont : Font = new Hel_Extended();
		public static var italicBoldFont : Font = new Hel_Extended();

		public function Vo()
		{
		}
	}
}
