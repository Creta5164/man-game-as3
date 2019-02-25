package  {
    
    import flash.display.MovieClip;
    
    /** 점프력이 강해지는 플랫폼입니다. */
    public class SuperJumpPlatform extends Platform {
        
        public function SuperJumpPlatform() {
            super();
        }
        
        /** 플랫폼에 점프할 때 호출됩니다. */
        internal override function OnJump():void {
            Man.current.Jump(17);
        }
    }
    
}