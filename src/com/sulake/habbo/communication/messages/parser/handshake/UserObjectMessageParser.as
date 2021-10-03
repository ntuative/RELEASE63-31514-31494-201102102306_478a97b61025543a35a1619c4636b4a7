package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_550:String;
      
      private var var_907:String;
      
      private var var_2448:String;
      
      private var var_1629:String;
      
      private var var_2446:int;
      
      private var var_2445:String;
      
      private var var_2444:int;
      
      private var var_2447:int;
      
      private var _respectTotal:int;
      
      private var var_1128:int;
      
      private var var_736:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_550 = param1.readString();
         this.var_907 = param1.readString();
         this.var_2448 = param1.readString();
         this.var_1629 = param1.readString();
         this.var_2446 = param1.readInteger();
         this.var_2445 = param1.readString();
         this.var_2444 = param1.readInteger();
         this.var_2447 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_1128 = param1.readInteger();
         this.var_736 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function get sex() : String
      {
         return this.var_907;
      }
      
      public function get customData() : String
      {
         return this.var_2448;
      }
      
      public function get realName() : String
      {
         return this.var_1629;
      }
      
      public function get tickets() : int
      {
         return this.var_2446;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2445;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2444;
      }
      
      public function get directMail() : int
      {
         return this.var_2447;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get method_1() : int
      {
         return this.var_1128;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_736;
      }
   }
}
