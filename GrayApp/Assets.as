package cuatroPlumasUI.GrayApp {
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	
	
	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Assets {
		[Embed(source="Assets/bg.png")]
		private var bg:Class;
		private var _bg:Bitmap = new bg() as Bitmap;
		
		public function get bgClass():Bitmap{
			return _bg;
		}
		
		public function get bgData():BitmapData{
			return _bg.bitmapData;
		}
		
		[Embed(source="Assets/btn.png")]
		private var btn:Class;
		private var _btn:Bitmap = new btn() as Bitmap;
		
		public function get btnClass():Bitmap{
			return _btn;
		}
		
		public function get btnData():BitmapData{
			return _btn.bitmapData;
		}
		
		[Embed(source="Assets/btnover.png")]
		private var btnover:Class;
		private var _btnover:Bitmap = new btnover() as Bitmap;
		
		public function get btnoverClass():Bitmap{
			return _btnover;
		}
		
		public function get btnoverData():BitmapData{
			return _btnover.bitmapData;
		}
		
		[Embed(source="Assets/btnclick.png")]
		private var btnclick:Class;
		private var _btnclick:Bitmap = new btnclick() as Bitmap;
		
		public function get btnclickClass():Bitmap{
			return _btnclick;
		}
		
		public function get btnclickData():BitmapData{
			return _btnclick.bitmapData;
		}
		
		[Embed(source="Assets/modaltop.png")]
		private var modaltop:Class;
		private var _modaltop:Bitmap = new modaltop() as Bitmap;
		
		public function get modaltopClass():Bitmap{
			return _modaltop;
		}
		
		public function get modaltopData():BitmapData{
			return _modaltop.bitmapData;
		}
		
		[Embed(source="Assets/modalbg.png")]
		private var modalbg:Class;
		private var _modalbg:Bitmap = new modalbg() as Bitmap;
		
		public function get modalbgClass():Bitmap{
			return _modalbg;
		}
		
		public function get modalbgData():BitmapData{
			return _modalbg.bitmapData;
		}
		
		[Embed(source="Assets/closemodalbtn.png")]
		private var closemodalbtn:Class;
		private var _closemodalbtn:Bitmap = new closemodalbtn() as Bitmap;
		
		public function get closemodalbtnClass():Bitmap{
			return _closemodalbtn;
		}
		
		public function get closemodalbtnData():BitmapData{
			return _closemodalbtn.bitmapData;
		}
		
		[Embed(source="Assets/formGroupBG.png")]
		private var formGroupBG:Class;
		private var _formGroupBG:Bitmap = new formGroupBG() as Bitmap;
		
		public function get formGroupBGClass():Bitmap{
			return _formGroupBG;
		}
		
		public function get formGroupBGData():BitmapData{
			return _formGroupBG.bitmapData;
		}
	}
}