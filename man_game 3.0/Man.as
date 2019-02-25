package  {
    
    import flash.display.MovieClip;
    import flash.events.Event;
    
    /** 플레이어 캐릭터입니다. */
    public class Man extends MovieClipInstance {
        
        public var xspeed:Number;
        public var yspeed:Number;
        public var inWater:Boolean;
        
        private function get relativeScale():Number {
            return this.scaleY / 0.504;
        }
        
        public static function get current():Man {
            return _current;
        } private static var _current:Man;
        
        public function Man() {
            
            super();
            
            _current = this;
            
            xspeed  = 7 * this.relativeScale;
            yspeed  = 0;
            inWater = false;
        }
        
        /** 매 프레임마다 호출됩니다. */
        internal override function Update(e:Event):void {
            
            //중력 가속도를 적용합니다.
            if (!inWater || (inWater && this.yspeed < 3))
                this.yspeed += Main.Gravity * this.relativeScale;
            
            this.y += this.yspeed;
            
            //오른쪽으로 이동, 가로 위치가 550보다 작을때만 이동가능.
            if (Main.RightKey && this.x < 550) {
                this.x += this.xspeed;
                
                if (this.scaleX < 0)
                    this.scaleX *= -1;
            }
            
            //왼쪽으로 이동, 가로 위치가 0보다 클 때만 이동가능.
            if (Main.LeftKey && this.x > 0) {
                this.x -= this.xspeed;
                
                if (this.scaleX > 0)
                    this.scaleX *= -1;
            }
            
            if (inWater) {
                
                if (this.y > 54.3 && Main.JumpKey)
                    this.yspeed -= 0.3;
                
                if (this.y < 40) {
                    
                    this.yspeed = 2;
                    
                    while (this.y < 40) {
                        this.y++;
                    }
                }
            }
            
            //이동하는 키를 누르고 있으면 이동하는 모습을, 그렇지 않다면 멈춘 모습으로 표시.
            if (Main.LeftKey || Main.RightKey)
                this.gotoAndStop(2);
            else
                this.gotoAndStop(1);
            
            //추락사 판정
            if (this.y > 450) {
                switch (Main.currentFrame) {
                    
                    default:
                        _current = null;
                        Main.GameOver();
                        break;
                    
                    case 3:
                        //this.x = 250.6;
                        this.y = 56.7;
                        break;
                    
                    case 37: break;
                }
            }
        }
        
        /** 점프합니다. 그냥 그렇다구요. */
        public function Jump(power:Number = 14):void {
            this.yspeed -= power * relativeScale;
        }
    }
}