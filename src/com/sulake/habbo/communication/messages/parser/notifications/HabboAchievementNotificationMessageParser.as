package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1285:int;
      
      private var var_1601:int;
      
      private var var_1992:int;
      
      private var var_1558:int;
      
      private var var_1284:int;
      
      private var var_1990:String = "";
      
      private var var_1989:String = "";
      
      private var var_1991:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1285 = param1.readInteger();
         this.var_1990 = param1.readString();
         this.var_1601 = param1.readInteger();
         this.var_1992 = param1.readInteger();
         this.var_1558 = param1.readInteger();
         this.var_1284 = param1.readInteger();
         this.var_1991 = param1.readInteger();
         this.var_1989 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1285;
      }
      
      public function get points() : int
      {
         return this.var_1601;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1992;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1558;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1284;
      }
      
      public function get badgeID() : String
      {
         return this.var_1990;
      }
      
      public function get achievementID() : int
      {
         return this.var_1991;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_1989;
      }
   }
}
