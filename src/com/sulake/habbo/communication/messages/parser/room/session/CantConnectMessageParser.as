package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1506:int = 1;
      
      public static const const_1739:int = 2;
      
      public static const const_1422:int = 3;
      
      public static const const_1446:int = 4;
       
      
      private var var_1308:int = 0;
      
      private var var_1307:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1308 = 0;
         this.var_1307 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1308 = param1.readInteger();
         if(this.var_1308 == 3)
         {
            this.var_1307 = param1.readString();
         }
         else
         {
            this.var_1307 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1308;
      }
      
      public function get parameter() : String
      {
         return this.var_1307;
      }
   }
}
