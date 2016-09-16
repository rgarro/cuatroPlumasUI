package cuatroPlumasUI.GrayApp {
	import flash.events.MouseEvent;
	import pragmaTico.CRCarrosLeads.Web.Admin.FormFinale.Grid;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.media.Sound;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class gridRow extends Sprite {
		
		[Embed(source="Assets/Sounds/Click_So-S_Bainbr-7974_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		protected var assets:Assets;
		protected var label:TextField;
		public var id:Number;
		public var delBtn:Sprite;
		public var grid:Grid;
		
		public function gridRow(labelStr:String,idNum:Number):void {
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
			label.width = 75;
			label.text = labelStr;
			label.x = 14;
			label.y = 9;
			
			this.clickSound = new clickSoundClass() as Sound;	
			this.delBtn = new Sprite();
			this.addChild(this.delBtn);
			var del:Bitmap = new Bitmap(this.assets.xbtnData);
			this.delBtn.addChild(del);
			this.delBtn.useHandCursor = true;
			this.delBtn.buttonMode = true;
			this.delBtn.x = 766;this.delBtn.y = 5;	
			this.delBtn.addEventListener(MouseEvent.CLICK, delClick);
		}
		
		public function delClick(e:MouseEvent):void{
			this.grid.confirmDelete(this.id,this.y);
		}
		
	}
}