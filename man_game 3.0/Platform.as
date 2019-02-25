package  {
    
    import flash.display.MovieClip;
    import flash.events.Event;
    
    /** 기본적인 플랫폼입니다.
     * 이 클래스를 상속해서 새로운 플랫폼을 만들 수 있습니다.
    */
    public class Platform extends MovieClipInstance {
        
        public function Platform() {
            super();
        }
        
        internal override function Update(e:Event):void {
            
            if (this.hitTestPoint(Man.current.x, Man.current.y, true) && Man.current.yspeed >= 0)
                OnLanding();
            
            while (this.hitTestPoint(Man.current.x, Man.current.y - 2, true) && Man.current.yspeed >= -1)
                Man.current.y -= 1;
            
            if (this.hitTestPoint(Man.current.x, Man.current.y + 1, true) && Main.JumpKey)
                OnJump();
        }
        
        /** 플랫폼에 착지했을 때 호출됩니다. */
        internal function OnLanding():void {
            Man.current.yspeed = 0;
            Man.current.yspeed -= Main.Gravity;
        }
        
        /** 플랫폼에 점프할 때 호출됩니다. */
        internal function OnJump():void {
            Man.current.Jump();
        }
    }
}