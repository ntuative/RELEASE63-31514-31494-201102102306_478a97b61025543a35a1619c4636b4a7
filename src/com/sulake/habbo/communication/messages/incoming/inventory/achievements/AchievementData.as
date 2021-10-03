package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1285:int;
      
      private var var_274:String;
      
      private var var_2057:int;
      
      private var var_1992:int;
      
      private var var_1558:int;
      
      private var var_2056:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1285 = param1.readInteger();
         this.var_274 = param1.readString();
         this.var_2057 = param1.readInteger();
         this.var_1992 = param1.readInteger();
         this.var_1558 = param1.readInteger();
         this.var_2056 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_274;
      }
      
      public function get level() : int
      {
         return this.var_1285;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2057;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1992;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1558;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2056;
      }
   }
}
