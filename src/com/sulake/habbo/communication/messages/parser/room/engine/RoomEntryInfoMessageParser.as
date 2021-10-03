package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1667:Boolean;
      
      private var var_2344:int;
      
      private var var_381:Boolean;
      
      private var var_1086:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1667;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2344;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1086;
      }
      
      public function get owner() : Boolean
      {
         return this.var_381;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1086 != null)
         {
            this.var_1086.dispose();
            this.var_1086 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1667 = param1.readBoolean();
         if(this.var_1667)
         {
            this.var_2344 = param1.readInteger();
            this.var_381 = param1.readBoolean();
         }
         else
         {
            this.var_1086 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
