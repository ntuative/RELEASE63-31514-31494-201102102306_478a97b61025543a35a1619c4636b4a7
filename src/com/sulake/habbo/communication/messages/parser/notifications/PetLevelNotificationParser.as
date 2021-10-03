package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1688:int;
      
      private var var_2523:String;
      
      private var var_1285:int;
      
      private var var_550:String;
      
      private var var_1276:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1688 = param1.readInteger();
         this.var_2523 = param1.readString();
         this.var_1285 = param1.readInteger();
         this.var_550 = param1.readString();
         this.var_1276 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1688;
      }
      
      public function get petName() : String
      {
         return this.var_2523;
      }
      
      public function get level() : int
      {
         return this.var_1285;
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function get petType() : int
      {
         return this.var_1276;
      }
   }
}
