package cuatroPlumasUI.GrayApp {
	import pragmaTico.CRCarrosLeads.Web.Admin.FormFinale.NewFormModal;
	import flash.geom.Rectangle;
	import flash.display.BitmapData;
	import flash.net.FileFilter;
	import flash.events.MouseEvent;
	import flash.display.Bitmap;
	import flash.net.FileReferenceList;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.net.FileReference;
	import flash.display.Sprite;
	import flash.media.Sound;
	import flash.external.ExternalInterface;
	
	import flash.display.Loader;
	//import fl.controls.Button;
	import flash.net.FileReference;
	import flash.net.FileFilter;
	import flash.events.ProgressEvent;
	import flash.events.MouseEvent;
	import flash.utils.ByteArray;
	
	/**
	 * Form Group Upload
	 * a form group upload to be place on Modal for CakePHP models acting as upload
	 * modal container should have on onShowingFile method
	 * 
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class formGroupUpload extends Sprite {
		
		[Embed(source="Assets/Sounds/Space_Cr-Intermed-407_hifi.mp3")] 
        protected var uploadSoundClass:Class; 
		protected var uploadSound:Sound;
		
		[Embed(source="Assets/Sounds/AFX_dela-zicoalph-8599_hifi.mp3")] 
        protected var uploadEndSoundClass:Class; 
		public var uploadEndSound:Sound;
		
		public var fileRef:FileReference;
		protected var uploadURL:URLRequest;
		public var uploadPhotoScript:String = "http://guayabosnake.tree/givesFruit.rb";
		protected var totalFiles:Number = 0;
		protected var btn:Button;
		protected var bg:Bitmap;
		protected var assets:Assets;
		protected var has_one_loaded:Boolean = false;
		public var bm:Bitmap;
		public var container:NewFormModal;
		protected var loader:Loader;
		
		public function formGroupUpload(url:String,cont:NewFormModal):void {
			this.container = cont;
			this.assets = new Assets();
			this.uploadPhotoScript = url;
			this.uploadURL = new URLRequest();
			this.uploadURL.url = uploadPhotoScript;
			this.totalFiles = 0;
			this.bg = new Bitmap(assets.formGroupBGData);
			this.addChild(this.bg);
			
			this.btn = new Button("Imagen");
			this.addChild(this.btn);
			this.btn.x = 5; this.btn.y = 5;
			this.btn.addEventListener(MouseEvent.CLICK, lookForFile);
			
			this.uploadSound = new uploadSoundClass();
			this.uploadEndSound = new uploadEndSoundClass();
			
			this.fileRef = new FileReference();
			this.fileRef.addEventListener(Event.SELECT, fileSelectHandler);
			this.fileRef.addEventListener(Event.COMPLETE, fileLoaded);
			//this.container.onHideFile();
		}
		
		public function lookForFile(e:MouseEvent):void{
			this.fileRef.browse(new Array( new FileFilter( "Images (*.jpg, *.jpeg, *.gif, *.png)", "*.jpg;*.jpeg;*.gif;*.png" )));
		}
		
		protected function fileSelectHandler(e:Event):void{
			this.fileRef.load();
			this.uploadSound.play();	
		}
		
		protected function fileLoaded(e:Event):void{
			 var ba:ByteArray=fileRef.data; // get data
			 this.loader =new Loader();
			 loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loaded);
			 loader.loadBytes(ba);
		}
		
		protected function loaded(e:Event):void{ // bitmap loaded
			this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, loaded);
   			if(this.has_one_loaded){
				this.removeChild(this.bm);
			}
			this.bm = e.currentTarget.loader.content as Bitmap;
			this.addChild(this.bm);
			this.bm.y = 50;
			this.bm.x = -75;
			this.has_one_loaded = true;
			this.container.onShowingFile();
		}
	}
}