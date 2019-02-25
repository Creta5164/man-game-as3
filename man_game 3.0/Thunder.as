package  {
    
    import flash.display.MovieClip;
    import flash.events.Event;
    
    /** 위에서 랜덤하게 떨어지는 번개입니다. */
    public class Thunder extends MovieClipInstance {
        
        public function Thunder() {
            super();
        }
        
        internal override function Update(e:Event):void {
            if (this.hitTestObject(Man.current)) {
                Main.GameOver();
            }
            
            this.y += 8;
            
            if (this.y > 600) {
                
                this.y = -5;
                this.x = Math.random() * 550;
                
            }
        }
    }
    
}
