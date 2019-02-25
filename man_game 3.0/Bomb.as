package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/** 닿으면 게임오버되는 폭탄입니다. */	
	public class Bomb extends MovieClipInstance {
		
		public function Bomb() {
			super();
		}
		
		internal override function Update(e:Event):void {
			if (this.hitTestObject(Man.current))
				Main.GameOver();
		}
	}
	
}
