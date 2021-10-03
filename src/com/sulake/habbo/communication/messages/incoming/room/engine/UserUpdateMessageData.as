package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_2465:Number = 0;
      
      private var var_2461:Number = 0;
      
      private var var_2463:Number = 0;
      
      private var var_2464:Number = 0;
      
      private var var_237:int = 0;
      
      private var var_2460:int = 0;
      
      private var var_311:Array;
      
      private var var_2462:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_311 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_166 = param3;
         this.var_165 = param4;
         this.var_2465 = param5;
         this.var_237 = param6;
         this.var_2460 = param7;
         this.var_2461 = param8;
         this.var_2463 = param9;
         this.var_2464 = param10;
         this.var_2462 = param11;
         this.var_311 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_166;
      }
      
      public function get z() : Number
      {
         return this.var_165;
      }
      
      public function get localZ() : Number
      {
         return this.var_2465;
      }
      
      public function get targetX() : Number
      {
         return this.var_2461;
      }
      
      public function get targetY() : Number
      {
         return this.var_2463;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2464;
      }
      
      public function get dir() : int
      {
         return this.var_237;
      }
      
      public function get dirHead() : int
      {
         return this.var_2460;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2462;
      }
      
      public function get actions() : Array
      {
         return this.var_311.slice();
      }
   }
}
