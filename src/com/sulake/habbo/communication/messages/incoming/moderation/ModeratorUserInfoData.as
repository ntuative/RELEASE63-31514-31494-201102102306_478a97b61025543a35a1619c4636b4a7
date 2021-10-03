package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2071:int;
      
      private var var_2069:int;
      
      private var var_695:Boolean;
      
      private var var_2070:int;
      
      private var var_2068:int;
      
      private var var_2073:int;
      
      private var var_2072:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2071 = param1.readInteger();
         this.var_2069 = param1.readInteger();
         this.var_695 = param1.readBoolean();
         this.var_2070 = param1.readInteger();
         this.var_2068 = param1.readInteger();
         this.var_2073 = param1.readInteger();
         this.var_2072 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2071;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2069;
      }
      
      public function get online() : Boolean
      {
         return this.var_695;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2070;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2068;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2073;
      }
      
      public function get banCount() : int
      {
         return this.var_2072;
      }
   }
}
