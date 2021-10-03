package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1868:int;
      
      private var var_2646:int;
      
      private var var_1335:int;
      
      private var var_2198:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1868 = param1.readInteger();
         this.var_2646 = param1.readInteger();
         this.var_1335 = param1.readInteger();
         this.var_2198 = param1.readInteger();
         this.var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1868);
      }
      
      public function get callId() : int
      {
         return this.var_1868;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2646;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1335;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2198;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_111;
      }
   }
}
