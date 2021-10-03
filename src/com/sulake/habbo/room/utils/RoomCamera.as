package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_894:int = 3;
       
      
      private var var_2006:int = -1;
      
      private var var_2005:int = -2;
      
      private var var_316:Vector3d = null;
      
      private var var_377:Vector3d = null;
      
      private var var_2008:Boolean = false;
      
      private var var_2013:Boolean = false;
      
      private var var_2009:Boolean = false;
      
      private var var_2010:Boolean = false;
      
      private var var_2011:int = 0;
      
      private var var_2012:int = 0;
      
      private var var_2007:int = 0;
      
      private var var_2014:int = 0;
      
      private var var_1241:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_377;
      }
      
      public function get targetId() : int
      {
         return this.var_2006;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2005;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2008;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2013;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2009;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2010;
      }
      
      public function get screenWd() : int
      {
         return this.var_2011;
      }
      
      public function get screenHt() : int
      {
         return this.var_2012;
      }
      
      public function get roomWd() : int
      {
         return this.var_2007;
      }
      
      public function get roomHt() : int
      {
         return this.var_2014;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2006 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2005 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2008 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2013 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2009 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2010 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2011 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2012 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2007 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2014 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_316 == null)
         {
            this.var_316 = new Vector3d();
         }
         if(this.var_316.x != param1.x || this.var_316.y != param1.y || this.var_316.z != param1.z)
         {
            this.var_316.assign(param1);
            this.var_1241 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_316 = null;
         this.var_377 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_377 != null)
         {
            return;
         }
         this.var_377 = new Vector3d();
         this.var_377.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_316 != null && this.var_377 != null)
         {
            ++this.var_1241;
            _loc4_ = Vector3d.dif(this.var_316,this.var_377);
            if(_loc4_.length <= param2)
            {
               this.var_377 = this.var_316;
               this.var_316 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_894 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1241 <= const_894)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_377 = Vector3d.sum(this.var_377,_loc4_);
            }
         }
      }
   }
}
