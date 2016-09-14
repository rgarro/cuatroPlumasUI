package cuatroPlumasUI.GrayApp {
	import flash.net.URLRequest;
	import flash.events.IOErrorEvent;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import pragmaTico.CRCarrosLeads.Web.Admin.Publicidad.Grid;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.media.Sound;
	import flash.display.Loader;
	import flash.display.Bitmap;
	import flash.external.ExternalInterface;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class gridRowB extends Sprite {
		
		[Embed(source="Assets/Sounds/Click_So-S_Bainbr-7974_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		[Embed(source="Assets/Sounds/Tap_on_M-Sapphire-8662_hifi.mp3")] 
        protected var loadSoundClass:Class; 
		protected var loadSound:Sound;
		
		protected var assets:Assets;
		protected var label:TextField;
		public var id:Number;
		public var delBtn:Sprite;
		public var grid:Grid;
		protected var bannerImg:Bitmap;
		protected var loader:Loader;
		protected var dataObj:Object;
		protected var imgUrl:String;
		
		public function gridRowB(labelStr:String,idNum:Number,datao:Object,url:String):void {
			this.imgUrl = url;
			this.dataObj = datao;
			this.assets = new Assets();
			var bg:Bitmap = new Bitmap(this.assets.gridrowData);
			this.addChild(bg);
			
			this.id = idNum;
			var tf:TextFormat = new TextFormat();
			tf.size = 15;
			tf.color = 0x878787;
			
			this.label = new TextField();
			this.label.defaultTextFormat = tf;
			this.addChild(label);
			label.type = TextFieldType.DYNAMIC;
			label.width = 175;
			label.text = labelStr;
			label.x = 14;
			label.y = 9;
			
			
			var tfd:TextFormat = new TextFormat();
			tfd.size = 12;
			tfd.color = 0xBEDEFF;
			
			var ulabel = new TextField();
			ulabel.defaultTextFormat = tfd;
			this.addChild(ulabel);
			ulabel.type = TextFieldType.DYNAMIC;
			ulabel.width = 275;
			ulabel.text = this.dataObj.target_url;
			ulabel.x = 14;
			ulabel.y = 25;
			
			
			this.clickSound = new clickSoundClass() as Sound;	
			this.loadSound = new loadSoundClass() as Sound;
			this.delBtn = new Sprite();
			this.addChild(this.delBtn);
			var del:Bitmap = new Bitmap(this.assets.xbtnData);
			this.delBtn.addChild(del);
			this.delBtn.useHandCursor = true;
			this.delBtn.buttonMode = true;
			this.delBtn.x = 766;this.delBtn.y = 5;	
			this.delBtn.addEventListener(MouseEvent.CLICK, delClick);
			
			this.loader = new Loader();
			this.addChild(this.loader);
			this.loader.x = 150;
			this.loader.y = -15;
			this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE, doneLoad);
			this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadingError);
			
			this.addEventListener(Event.ADDED_TO_STAGE, adedToStage);
		}
		
		protected function doneLoad(e:Event):void{
			this.loader.width = 520;
			this.loader.height = 84;
			this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,doneLoad);
			this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadingError);
		}
		
		protected function loadingError(e:IOErrorEvent):void{
			ExternalInterface.call("alert", "Banner Image Loading Error");
		}
		
		
		public function adedToStage(event:Event):void{
			this.removeEventListener(Event.ADDED_TO_STAGE, adedToStage);
			this.startImageLoad();
		}
		
		protected function startImageLoad():void{
			var url:String = this.imgUrl + "app/webroot/files/publicidad/" + String(this.dataObj.id) + "/" + this.dataObj.Filename;
			this.loadSound.play();
			this.loader.load(new URLRequest(url));
		}
		public function delClick(e:MouseEvent):void{
			this.grid.confirmDelete(this.id);
		}
		
	}
}