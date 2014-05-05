package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Chest extends MovieClip{
		var contentNameArray:Array;
		var contentValueArray:Array;
		public var isOpened:Boolean;
		public var chestEmpty:Boolean;
		
		public function Chest() {
			// constructor code
			contentNameArray = new Array();
			contentValueArray = new Array();
			isOpened = false;
			chestEmpty = false;
		}
		
		public function fillChest(newNameArray:Array, newValueArray:Array):void {
			//trace(newArray.length);
			if(newNameArray[0] == null)
				chestEmpty = true;
			else {
				for(var i:int = 0;i < newNameArray.length;i++) {
					contentNameArray[i] = newNameArray[i];
					contentValueArray[i] = newValueArray[i]
					//trace(contentNameArray[i] + " ... " + contentValueArray[i]);
				}
			}
		}
		
		public function obtainChestItemName():Array {
			this.gotoAndStop("Open");
			isOpened = true;
			chestEmpty = true;
			return contentNameArray;
		}
		public function obtainChestItemValue():Array {
			return contentValueArray;
		}

	}
	
}
