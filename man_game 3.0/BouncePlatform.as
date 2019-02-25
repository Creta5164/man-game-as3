package  {
    
    import flash.display.MovieClip;
    
    /** 통통 튀는 플랫폼입니다. */
    public class BouncePlatform extends Platform {
        
        public function BouncePlatform() {
            super();
        }
        
        internal override function OnLanding():void {
            
            if (Math.abs(Man.current.yspeed) > 3)
                Man.current.yspeed = -0.8 * Man.current.yspeed;
            else
                Man.current.yspeed = 0;
            
            Man.current.yspeed -= Main.Gravity;
        }
    }
}