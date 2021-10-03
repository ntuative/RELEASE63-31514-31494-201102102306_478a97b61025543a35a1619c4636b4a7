package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_812:int;
      
      private var var_695:Boolean;
      
      private var var_1695:Boolean;
      
      private var var_550:String;
      
      private var var_1257:int;
      
      private var var_1717:String;
      
      private var var_1630:String;
      
      private var var_1629:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_812 = param1.readInteger();
         this.var_695 = param1.readBoolean();
         this.var_1695 = param1.readBoolean();
         this.var_550 = param1.readString();
         this.var_1257 = param1.readInteger();
         this.var_1717 = param1.readString();
         this.var_1630 = param1.readString();
         this.var_1629 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_812;
      }
      
      public function get online() : Boolean
      {
         return this.var_695;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1695;
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function get categoryId() : int
      {
         return this.var_1257;
      }
      
      public function get motto() : String
      {
         return this.var_1717;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1630;
      }
      
      public function get realName() : String
      {
         return this.var_1629;
      }
   }
}
