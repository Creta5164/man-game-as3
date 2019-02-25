package  {
	
	import flash.events.MouseEvent;
	import flash.display.MovieClip;
	import flash.display.DisplayObject;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	public class Main extends MovieClip {
        
        private static const GAMEOVER_LABEL:String = "GameOverFrame";
		
		private static var current:Main;
		
		/** 마지막으로 진행했던 스테이지의 프레임 번호입니다. */
		public static var LastGame:int;
		
	    /** 플레이어의 중력입니다. */
		public static var Gravity:Number;
		
	    /** 스테이지를 클리어 했는 지 여부입니다. */
		public static var Clear:Boolean;
        
        public static function get LeftKey():Boolean {
            return current.leftKey;
        } private var leftKey:Boolean;
        
        public static function get RightKey():Boolean {
            return current.rightKey;
        } private var rightKey:Boolean;
        
        public static function get JumpKey():Boolean {
            return current.jumpKey;
        } private var jumpKey:Boolean;
        
        public static function get InteractionKey():Boolean {
            return current.interactionKey;
        } private var interactionKey:Boolean;
		
		public static function get currentFrame():int {
			return current.currentFrame;
		}
		
		public function Main() {
			current = this;
            this.stage.addEventListener(KeyboardEvent.KEY_DOWN, OnKeyInput);
            this.stage.addEventListener(KeyboardEvent.KEY_UP,   OnKeyInput);
		}
		
		private static function OnKeyInput(e:KeyboardEvent):void
		{
			switch (e.type) {
				
				case KeyboardEvent.KEY_DOWN:
					
					if (e.keyCode == Keyboard.LEFT)
						current.leftKey = true;
					
					if (e.keyCode == Keyboard.RIGHT)
						current.rightKey = true;
					
					if (e.keyCode == Keyboard.SPACE)
						current.jumpKey = true;
					
					if (e.keyCode == Keyboard.UP)
						current.interactionKey = true;
					
					break;
				
				case KeyboardEvent.KEY_UP:
					
					if (e.keyCode == Keyboard.LEFT)
						current.leftKey = false;
					
					if (e.keyCode == Keyboard.RIGHT)
						current.rightKey = false;
					
					if (e.keyCode == Keyboard.SPACE)
						current.jumpKey = false;
					
					if (e.keyCode == Keyboard.UP)
						current.interactionKey = false;
					
					break;
				
			}
		}
        
        public static function GameOver():void
        {
            current.gotoAndStop(GAMEOVER_LABEL);
        }
		
		public static function Retry():void {
			current.gotoAndStop(LastGame);
		}
		
		public static function Reset():void {
			current.gotoAndStop(3);
		}
		
		public static function play():void
		{
			current.play();
		}
		
		public static function gotoAndStop(frame:Object):void
		{
			current.gotoAndStop(frame);
		}
	}
	
}
