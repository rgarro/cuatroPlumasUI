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
		
		[Embed(source="Assets/gridrow.png")]
		private var gridrow:Class;
		private var _gridrow:Bitmap = new gridrow() as Bitmap;
		
		public function get gridrowClass():Bitmap{
			return _gridrow;
		}
		
		public function get gridrowData():BitmapData{
			return _gridrow.bitmapData;
		}
		
		[Embed(source="Assets/gridrowB.png")]
		private var gridrowB:Class;
		private var _gridrowB:Bitmap = new gridrowB() as Bitmap;
		
		public function get gridrowBClass():Bitmap{
			return _gridrowB;
		}
		
		public function get gridrowBData():BitmapData{
			return _gridrowB.bitmapData;
		}
		
		
		[Embed(source="Assets/gridrowBon.png")]
		private var gridrowBon:Class;
		private var _gridrowBon:Bitmap = new gridrowBon() as Bitmap;
		
		public function get gridrowBonClass():Bitmap{
			return _gridrowBon;
		}
		
		public function get gridrowBonData():BitmapData{
			return _gridrowBon.bitmapData;
		}
		
		[Embed(source="Assets/xbtn.png")]
		private var xbtn:Class;
		private var _xbtn:Bitmap = new xbtn() as Bitmap;
		
		public function get xbtnClass():Bitmap{
			return _xbtn;
		}
		
		public function get xbtnData():BitmapData{
			return _xbtn.bitmapData;
		}
		
		[Embed(source="Assets/okbg.png")]
		private var okbg:Class;
		private var _okbg:Bitmap = new okbg() as Bitmap;
		
		public function get okbgClass():Bitmap{
			return _okbg;
		}
		
		public function get okbgData():BitmapData{
			return _okbg.bitmapData;
		}
		
		[Embed(source="Assets/paginacionBackBg.png")]
		private var paginacionBackBg:Class;
		private var _paginacionBackBg:Bitmap = new paginacionBackBg() as Bitmap;
		
		public function get paginacionBackBgClass():Bitmap{
			return _paginacionBackBg;
		}
		
		public function get paginacionBackBgData():BitmapData{
			return _paginacionBackBg.bitmapData;
		}
		
		[Embed(source="Assets/paginacionBackBgOff.png")]
		private var paginacionBackBgOff:Class;
		private var _paginacionBackBgOff:Bitmap = new paginacionBackBgOff() as Bitmap;
		
		public function get paginacionBackBgOffClass():Bitmap{
			return _paginacionBackBgOff;
		}
		
		public function get paginacionBackBgOffData():BitmapData{
			return _paginacionBackBgOff.bitmapData;
		}
		
		[Embed(source="Assets/paginacionBackBgOver.png")]
		private var paginacionBackBgOver:Class;
		private var _paginacionBackBgOver:Bitmap = new paginacionBackBgOver() as Bitmap;
		
		public function get paginacionBackBgOverClass():Bitmap{
			return _paginacionBackBgOver;
		}
		
		public function get paginacionBackBgOverData():BitmapData{
			return _paginacionBackBgOver.bitmapData;
		}
		
		[Embed(source="Assets/paginacionButtonBg.png")]
		private var paginacionButtonBg:Class;
		private var _paginacionButtonBg:Bitmap = new paginacionButtonBg() as Bitmap;
		
		public function get paginacionButtonBgClass():Bitmap{
			return _paginacionButtonBg;
		}
		
		public function get paginacionButtonBgData():BitmapData{
			return _paginacionButtonBg.bitmapData;
		}
		
		[Embed(source="Assets/paginacionButtonBgOff.png")]
		private var paginacionButtonBgOff:Class;
		private var _paginacionButtonBgOff:Bitmap = new paginacionButtonBgOff() as Bitmap;
		
		public function get paginacionButtonBgOffClass():Bitmap{
			return _paginacionButtonBgOff;
		}
		
		public function get paginacionButtonBgOffData():BitmapData{
			return _paginacionButtonBgOff.bitmapData;
		}
		
		[Embed(source="Assets/paginacionButtonBgOver.png")]
		private var paginacionButtonBgOver:Class;
		private var _paginacionButtonBgOver:Bitmap = new paginacionButtonBgOver() as Bitmap;
		
		public function get paginacionButtonBgOverClass():Bitmap{
			return _paginacionButtonBgOver;
		}
		
		public function get paginacionButtonBgOverData():BitmapData{
			return _paginacionButtonBgOver.bitmapData;
		}
		
		[Embed(source="Assets/paginacionFwdBg.png")]
		private var paginacionFwdBg:Class;
		private var _paginacionFwdBg:Bitmap = new paginacionFwdBg() as Bitmap;
		
		public function get paginacionFwdBgClass():Bitmap{
			return _paginacionFwdBg;
		}
		
		public function get paginacionFwdBgData():BitmapData{
			return _paginacionFwdBg.bitmapData;
		}
		
		[Embed(source="Assets/paginacionFwdBgOff.png")]
		private var paginacionFwdBgOff:Class;
		private var _paginacionFwdBgOff:Bitmap = new paginacionFwdBgOff() as Bitmap;
		
		public function get paginacionFwdBgOffClass():Bitmap{
			return _paginacionFwdBgOff;
		}
		
		public function get paginacionFwdBgOffData():BitmapData{
			return _paginacionFwdBgOff.bitmapData;
		}
		
		[Embed(source="Assets/paginacionFwdBgOver.png")]
		private var paginacionFwdBgOver:Class;
		private var _paginacionFwdBgOver:Bitmap = new paginacionFwdBgOver() as Bitmap;
		
		public function get paginacionFwdBgOverClass():Bitmap{
			return _paginacionFwdBgOver;
		}
		
		public function get paginacionFwdBgOverData():BitmapData{
			return _paginacionFwdBgOver.bitmapData;
		}
		
		[Embed(source="Assets/finaleRowBg.png")]
		private var finaleRowBg:Class;
		private var _finaleRowBg:Bitmap = new finaleRowBg() as Bitmap;
		
		public function get finaleRowBgClass():Bitmap{
			return _finaleRowBg;
		}
		
		public function get finaleRowBgData():BitmapData{
			return _finaleRowBg.bitmapData;
		}
		
		[Embed(source="Assets/squarePoolBg.png")]
		private var squarePoolBg:Class;
		private var _squarePoolBg:Bitmap = new squarePoolBg() as Bitmap;
		
		public function get squarePoolBgClass():Bitmap{
			return _squarePoolBg;
		}
		
		public function get squarePoolBgData():BitmapData{
			return _squarePoolBg.bitmapData;
		}
		
		[Embed(source="Assets/magnifierBtn.png")]
		private var magnifierBtn:Class;
		private var _magnifierBtn:Bitmap = new magnifierBtn() as Bitmap;
		
		public function get magnifierBtnClass():Bitmap{
			return _magnifierBtn;
		}
		
		public function get magnifierBtnData():BitmapData{
			return _magnifierBtn.bitmapData;
		}
		
		[Embed(source="Assets/magnifierBtnOver.png")]
		private var magnifierBtnOver:Class;
		private var _magnifierBtnOver:Bitmap = new magnifierBtnOver() as Bitmap;
		
		public function get magnifierBtnOverClass():Bitmap{
			return _magnifierBtnOver;
		}
		
		public function get magnifierBtnOverData():BitmapData{
			return _magnifierBtnOver.bitmapData;
		}
		
		[Embed(source="Assets/okBtn.png")]
		private var okBtn:Class;
		private var _okBtn:Bitmap = new okBtn() as Bitmap;
		
		public function get okBtnClass():Bitmap{
			return _okBtn;
		}
		
		public function get okBtnData():BitmapData{
			return _okBtn.bitmapData;
		}
		
		[Embed(source="Assets/deleteXbtn.png")]
		private var deleteXbtn:Class;
		private var _deleteXbtn:Bitmap = new deleteXbtn() as Bitmap;
		
		public function get deleteXbtnClass():Bitmap{
			return _deleteXbtn;
		}
		
		public function get deleteXbtnData():BitmapData{
			return _deleteXbtn.bitmapData;
		}
	}
}