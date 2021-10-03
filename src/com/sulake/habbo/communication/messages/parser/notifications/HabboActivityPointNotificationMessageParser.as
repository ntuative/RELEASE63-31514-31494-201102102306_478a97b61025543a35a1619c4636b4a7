package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboActivityPointNotificationMessageParser implements IMessageParser
   {
       
      
      private var var_2210:int = 0;
      
      private var var_2211:int = 0;
      
      private var _type:int;
      
      public function HabboActivityPointNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2210 = param1.readInteger();
         this.var_2211 = param1.readInteger();
         this._type = param1.readInteger();
         return true;
      }
      
      public function get amount() : int
      {
         return this.var_2210;
      }
      
      public function get change() : int
      {
         return this.var_2211;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
