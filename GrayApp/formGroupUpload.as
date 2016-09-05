package cuatroPlumasUI.GrayApp {
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
	
	/**
	 * Form Group Upload
	 * a form group upload for CakePHP models acting as upload
	 * 
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class formGroupUpload extends Sprite {
		
		[Embed(source="Assets/Sounds/Space_Cr-Intermed-407_hifi.mp3")] 
        protected var uploadSoundClass:Class; 
		protected var uploadSound:Sound;
		
		[Embed(source="Assets/Sounds/AFX_dela-zicoalph-8599_hifi.mp3")] 
        protected var uploadEndSoundClass:Class; 
		protected var uploadEndSound:Sound;
		
		protected var fileRef:FileReference;
		protected var uploadURL:URLRequest;
		public var uploadPhotoScript:String = "http://guayabosnake.tree/givesFruit.rb";
		protected var totalFiles:Number = 0;
		protected var btn:Button;
		protected var bg:Bitmap;
		protected var assets:Assets;
		
		public function formGroupUpload(url:String):void {
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
			
			this.fileRef = new FileReference();
			this.fileRef.addEventListener(Event.SELECT, fileSelectHandler);
			this.fileRef.addEventListener(Event.COMPLETE, fileLoaded);
		}
		
		public function lookForFile(e:MouseEvent):void{
			this.fileRef.browse(new Array( new FileFilter( "Images (*.jpg, *.jpeg, *.gif, *.png)", "*.jpg;*.jpeg;*.gif;*.png" )));
		}
		
		protected function fileSelectHandler(e:Event):void{
			//this.uploadSound.play();
			this.fileRef.load();	
		}
		
		protected function fileLoaded(e:Event):void{
			ExternalInterface.call("console.log", "yxxxxttt");
			ExternalInterface.call("console.log", this.fileRef);
			var tmpImg:Bitmap = new Bitmap(this.fileRef.data as BitmapData);
			ExternalInterface.call("console.log", tmpImg);
			this.addChild(tmpImg);
			tmpImg.x = 250;
		}
		
	}
}