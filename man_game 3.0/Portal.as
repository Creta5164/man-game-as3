package  {
    
    import flash.display.MovieClip;
    import flash.events.Event;
    
    /** 게임의 클리어 포인트인 포탈입니다. */
    public class Portal extends MovieClipInstance {
        
        public var nextStage:Object;
        
        public function Portal() {
            super();
        }
        
        internal override function Update(e:Event):void {
            if (this.hitTestObject(Man.current) && Main.InteractionKey) {
                
                if (nextStage != null)
                    Main.gotoAndStop(nextStage);
                else
                    Main.play();
                
                Main.Clear = true;
            }
        }
    }
    
}
