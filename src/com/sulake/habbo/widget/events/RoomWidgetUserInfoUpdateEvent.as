package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_168:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_252:String = "RWUIUE_PEER";
      
      public static const const_1414:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_974:int = 2;
      
      public static const const_1058:int = 3;
      
      public static const const_1507:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1717:String = "";
      
      private var var_2222:int;
      
      private var var_2227:int = 0;
      
      private var var_2224:int = 0;
      
      private var var_550:String = "";
      
      private var var_43:BitmapData = null;
      
      private var var_240:Array;
      
      private var var_1685:Array;
      
      private var var_1468:int = 0;
      
      private var var_2398:String = "";
      
      private var var_2397:int = 0;
      
      private var var_2400:int = 0;
      
      private var var_1507:Boolean = false;
      
      private var var_1629:String = "";
      
      private var var_2399:Boolean = false;
      
      private var var_2389:Boolean = true;
      
      private var var_1128:int = 0;
      
      private var var_2390:Boolean = false;
      
      private var var_2396:Boolean = false;
      
      private var var_2391:Boolean = false;
      
      private var var_2394:Boolean = false;
      
      private var var_2393:Boolean = false;
      
      private var var_2392:Boolean = false;
      
      private var var_2395:int = 0;
      
      private var var_1508:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_240 = [];
         this.var_1685 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1717 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1717;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2222 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2222;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2227 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2227;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2224 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2224;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_550 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_240 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_240;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1685;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1685 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1468 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1468;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2398 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2398;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2399 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2399;
      }
      
      public function set method_1(param1:int) : void
      {
         this.var_1128 = param1;
      }
      
      public function get method_1() : int
      {
         return this.var_1128;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2390 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2390;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2396 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2396;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2391 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2391;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2394 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2394;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2393 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2393;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2392 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2392;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2395 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2395;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2389 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2389;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1508 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1508;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2397 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2397;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2400 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2400;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1507 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1507;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1629 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1629;
      }
   }
}
