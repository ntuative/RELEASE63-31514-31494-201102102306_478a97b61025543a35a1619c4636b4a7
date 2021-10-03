package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_172:String;
      
      private var _objectId:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_375:int;
      
      private var var_1119:String;
      
      private var var_1995:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_172;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get shareId() : String
      {
         return this.var_1119;
      }
      
      public function get status() : int
      {
         return this.var_375;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_1995;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_172 = param1.readString();
         this._objectId = param1.readInteger();
         this.var_375 = param1.readInteger();
         this.var_1119 = param1.readString();
         this.var_1995 = param1.readString();
         return true;
      }
   }
}
