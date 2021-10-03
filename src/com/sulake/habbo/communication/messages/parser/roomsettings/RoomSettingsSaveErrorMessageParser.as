package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1801:int = 1;
      
      public static const const_1778:int = 2;
      
      public static const const_1774:int = 3;
      
      public static const const_1878:int = 4;
      
      public static const const_1617:int = 5;
      
      public static const const_1932:int = 6;
      
      public static const const_1423:int = 7;
      
      public static const const_1510:int = 8;
      
      public static const const_1808:int = 9;
      
      public static const const_1410:int = 10;
      
      public static const const_1585:int = 11;
      
      public static const const_1607:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1613:int;
      
      private var var_1377:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1613 = param1.readInteger();
         this.var_1377 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1613;
      }
      
      public function get info() : String
      {
         return this.var_1377;
      }
   }
}
