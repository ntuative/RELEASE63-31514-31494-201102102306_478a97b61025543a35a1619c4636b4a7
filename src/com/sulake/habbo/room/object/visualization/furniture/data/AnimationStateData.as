package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationStateData
   {
       
      
      private var var_1783:int = -1;
      
      private var var_2553:int = 0;
      
      private var var_1760:Boolean = false;
      
      private var var_545:int = 0;
      
      private var _frames:Array;
      
      private var var_919:Array;
      
      private var var_920:Array;
      
      private var var_613:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_919 = [];
         this.var_920 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1760;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1760 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_545;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_545 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_1783;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_1783)
         {
            this.var_1783 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2553;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2553 = param1;
      }
      
      public function dispose() : void
      {
         this._frames = null;
         this.var_919 = null;
         this.var_920 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_613 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param1 || this._frames == null)
         {
            this._frames = [];
         }
         this.var_919 = [];
         this.var_920 = [];
         this.var_1760 = false;
         this.var_545 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_613)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  this._frames[_loc2_] = new AnimationFrame(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_919[_loc2_] = false;
            this.var_920[_loc2_] = false;
            _loc2_++;
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_613)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         if(param1 >= 0 && param1 < this.var_613)
         {
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_613)
         {
            return this.var_920[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_613)
         {
            this.var_920[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_613)
         {
            return this.var_919[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_613)
         {
            this.var_919[param1] = param2;
         }
      }
   }
}
