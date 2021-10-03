package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2242:int;
      
      private var var_2239:int;
      
      private var var_2241:int;
      
      private var var_2244:int;
      
      private var var_2243:int;
      
      private var var_2240:int;
      
      private var var_94:Array;
      
      private var var_204:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_94 = new Array();
         this.var_204 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2242 = param1.readInteger();
         this.var_2239 = param1.readInteger();
         this.var_2241 = param1.readInteger();
         this.var_2244 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_94.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_204.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2243 = param1.readInteger();
         this.var_2240 = param1.readInteger();
         return true;
      }
      
      public function get method_12() : int
      {
         return this.var_2242;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2239;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2241;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2243;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2240;
      }
      
      public function get categories() : Array
      {
         return this.var_94;
      }
      
      public function get friends() : Array
      {
         return this.var_204;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2244;
      }
   }
}
