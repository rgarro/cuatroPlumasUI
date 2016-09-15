package cuatroPlumasUI.GrayApp {
	import flash.events.Event;
	import flash.display.Sprite;
	import flash.external.ExternalInterface;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class PaginatorContainer extends Sprite {
		
		public var limit:Number;
		public var total:Number;
		public var pageButtons:Array;
		public var steps:Number;
		public var prevBtn:PaginatorPrevBtn;
		public var nextBtn:PaginatorNextBtn;
		public var current_offset:Number;
		
		public function PaginatorContainer(limitInt:Number,totalI:Number):void {
			this.total = totalI;
			this.limit = limitInt;
			this.steps = Math.ceil(this.total/this.limit);
			this.addEventListener(Event.ADDED_TO_STAGE, addedToStage);
		}
		
		protected function addedToStage(event:Event):void{
			this.loadButtons();
		}
		
		public function loadButtons():void{
			this.pageButtons = new Array();
			//this.prevBtn = new PaginatorPrevBtn(0,this.limit);
			//this.prevBtn.container = this;
			//this.addChild(this.prevBtn);
			var px:Number = 5;
			//this.addChild(this.prevBtn);
			var offset:Number = 0;
			for(var i:Number = 0;i < this.steps;i++){
				var pageBtn:PaginatorPageBtn = new PaginatorPageBtn(offset, this.limit);
				pageBtn.container = this;
				this.addChild(pageBtn);
				pageBtn.x = px;
				this.pageButtons.push(pageBtn);
				offset = offset + this.limit;
				px = px + 40;
			}
			//this.nextBtn = new PaginatorNextBtn(this.limit, this.limit);
			//this.nextBtn.container = this;
			//this.addChild(this.nextBtn);
			//this.nextBtn.x = px;
		}
		
		public function setCurrentOffset(val:Number):void{
			this.current_offset = val;
			ExternalInterface.call("alert", this.current_offset);
		}
		
	}
}