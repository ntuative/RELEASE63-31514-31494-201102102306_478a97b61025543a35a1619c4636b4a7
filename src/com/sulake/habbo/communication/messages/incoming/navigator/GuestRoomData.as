package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_321:int;
      
      private var var_657:Boolean;
      
      private var var_865:String;
      
      private var _ownerName:String;
      
      private var var_2037:int;
      
      private var var_2282:int;
      
      private var var_2530:int;
      
      private var var_1618:String;
      
      private var var_2529:int;
      
      private var var_2262:Boolean;
      
      private var var_755:int;
      
      private var var_1257:int;
      
      private var var_2528:String;
      
      private var var_792:Array;
      
      private var var_2527:RoomThumbnailData;
      
      private var var_2034:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_792 = new Array();
         super();
         this.var_321 = param1.readInteger();
         this.var_657 = param1.readBoolean();
         this.var_865 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2037 = param1.readInteger();
         this.var_2282 = param1.readInteger();
         this.var_2530 = param1.readInteger();
         this.var_1618 = param1.readString();
         this.var_2529 = param1.readInteger();
         this.var_2262 = param1.readBoolean();
         this.var_755 = param1.readInteger();
         this.var_1257 = param1.readInteger();
         this.var_2528 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_792.push(_loc4_);
            _loc3_++;
         }
         this.var_2527 = new RoomThumbnailData(param1);
         this.var_2034 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_321;
      }
      
      public function get event() : Boolean
      {
         return this.var_657;
      }
      
      public function get roomName() : String
      {
         return this.var_865;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2037;
      }
      
      public function get userCount() : int
      {
         return this.var_2282;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2530;
      }
      
      public function get description() : String
      {
         return this.var_1618;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2529;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2262;
      }
      
      public function get score() : int
      {
         return this.var_755;
      }
      
      public function get categoryId() : int
      {
         return this.var_1257;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2528;
      }
      
      public function get tags() : Array
      {
         return this.var_792;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2527;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2034;
      }
   }
}
