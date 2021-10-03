package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_566:String = "RWTDUE_TEASER_DATA";
      
      public static const const_716:String = "RWTDUE_GIFT_DATA";
      
      public static const const_609:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var _objectId:int;
      
      private var _data:String;
      
      private var var_375:int;
      
      private var var_172:String;
      
      private var var_1995:String;
      
      private var var_1994:Boolean;
      
      private var var_2180:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_375;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_1995;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_1994;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2180;
      }
      
      public function set status(param1:int) : void
      {
         this.var_375 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_1995 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_1994 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2180 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this._objectId = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_172;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_172 = param1;
      }
   }
}
