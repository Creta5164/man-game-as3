package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/** 레이저 비이이이이이이임 */
	public class Lazer extends MovieClipInstance {
		
		public function Lazer() {
			super();
		}
		
		internal override function Update(e:Event):void {
			if (this.currentFrame <= 79 && this.hitTestObject(Man.current))
				Main.GameOver();
		}
	}
	
}
