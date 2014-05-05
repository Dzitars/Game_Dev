package  {
	import flash.display.Sprite
	public class ActionText extends Sprite{
		var actionTextArray:Array = new Array();
		
		public function ActionText(t1:String,t2:String,t3:String,t4:String) {
			// constructor code
			actionTextArray[0] = t1;
			actionTextArray[1] = t2;
			actionTextArray[2] = t3;
			actionTextArray[3] = t4;
			
			updateTextArea();
		}
		
		public function addNewItem(newText:String) {
			actionTextArray.shift();
			actionTextArray[3] = newText;
			
			updateTextArea();
		}
		
		public function updateTextArea():void {
			this.mainText.text = "";
			for(var i:int = 0;i < actionTextArray.length;i++) {
				this.mainText.appendText(actionTextArray[i]);
				this.mainText.appendText("\n");
			}
			
		}

	}
	
}
