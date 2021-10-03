package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var _offerId:int;
      
      private var var_2578:Boolean;
      
      private var var_2326:Boolean;
      
      private var var_2577:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_2578 = param1.readBoolean();
         this.var_2577 = param1.readInteger();
         this.var_2326 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2578;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2326;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2577;
      }
   }
}
