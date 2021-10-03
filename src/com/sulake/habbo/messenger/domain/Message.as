package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_880:int = 1;
      
      public static const const_617:int = 2;
      
      public static const const_645:int = 3;
      
      public static const const_1052:int = 4;
      
      public static const const_850:int = 5;
      
      public static const const_1175:int = 6;
       
      
      private var _type:int;
      
      private var var_1136:int;
      
      private var var_1987:String;
      
      private var var_2581:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1136 = param2;
         this.var_1987 = param3;
         this.var_2581 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1987;
      }
      
      public function get time() : String
      {
         return this.var_2581;
      }
      
      public function get senderId() : int
      {
         return this.var_1136;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
