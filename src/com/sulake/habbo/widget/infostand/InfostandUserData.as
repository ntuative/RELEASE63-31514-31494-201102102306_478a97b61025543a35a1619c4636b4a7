package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   
   public class InfostandUserData
   {
       
      
      private var _userId:int = 0;
      
      private var _userName:String = "";
      
      private var var_240:Array;
      
      private var var_1685:Array;
      
      private var var_1468:int = 0;
      
      private var var_2398:String = "";
      
      private var var_1128:int = 0;
      
      private var var_2397:int = 0;
      
      private var var_2400:int = 0;
      
      private var _type:String;
      
      private var var_736:int = 0;
      
      public function InfostandUserData()
      {
         this.var_240 = [];
         this.var_1685 = [];
         super();
      }
      
      public function set userId(param1:int) : void
      {
         this._userId = param1;
      }
      
      public function set userName(param1:String) : void
      {
         this._userName = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_240 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1468 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2398 = param1;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_1128 = param1;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2397 = param1;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2400 = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         this.var_736 = param1;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1685 = param1;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get badges() : Array
      {
         return this.var_240.slice();
      }
      
      public function get groupId() : int
      {
         return this.var_1468;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2398;
      }
      
      public function get method_1() : int
      {
         return this.var_1128;
      }
      
      public function get carryItem() : int
      {
         return this.var_2397;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2400;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_736;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1685;
      }
      
      public function isBot() : Boolean
      {
         return this.type == RoomWidgetUserInfoUpdateEvent.BOT;
      }
      
      public function setData(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.userId = param1.webID;
         this.userName = param1.name;
         this.badges = param1.badges;
         this.givableBadges = param1.givableBadges;
         this.groupId = param1.groupId;
         this.groupBadgeId = param1.groupBadgeId;
         this.method_1 = param1.method_1;
         this.carryItem = param1.carryItem;
         this.userRoomId = param1.userRoomId;
         this.type = param1.type;
      }
   }
}
