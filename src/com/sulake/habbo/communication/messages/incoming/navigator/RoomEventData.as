package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1184:Boolean;
      
      private var var_2142:int;
      
      private var var_2141:String;
      
      private var var_321:int;
      
      private var var_2145:int;
      
      private var var_2143:String;
      
      private var var_2144:String;
      
      private var var_2140:String;
      
      private var var_792:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_792 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1184 = false;
            return;
         }
         this.var_1184 = true;
         this.var_2142 = int(_loc2_);
         this.var_2141 = param1.readString();
         this.var_321 = int(param1.readString());
         this.var_2145 = param1.readInteger();
         this.var_2143 = param1.readString();
         this.var_2144 = param1.readString();
         this.var_2140 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_792.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_792 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2142;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2141;
      }
      
      public function get flatId() : int
      {
         return this.var_321;
      }
      
      public function get eventType() : int
      {
         return this.var_2145;
      }
      
      public function get eventName() : String
      {
         return this.var_2143;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2144;
      }
      
      public function get creationTime() : String
      {
         return this.var_2140;
      }
      
      public function get tags() : Array
      {
         return this.var_792;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1184;
      }
   }
}
