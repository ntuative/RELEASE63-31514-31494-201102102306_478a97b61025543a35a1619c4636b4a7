package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1785:int = 1;
      
      public static const const_1584:int = 2;
       
      
      private var var_924:String;
      
      private var var_2371:int;
      
      private var var_2372:int;
      
      private var var_2378:int;
      
      private var var_2380:int;
      
      private var var_2381:Boolean;
      
      private var var_2375:Boolean;
      
      private var var_2377:int;
      
      private var var_2376:int;
      
      private var var_2374:Boolean;
      
      private var var_2373:int;
      
      private var var_2379:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_924 = param1.readString();
         this.var_2371 = param1.readInteger();
         this.var_2372 = param1.readInteger();
         this.var_2378 = param1.readInteger();
         this.var_2380 = param1.readInteger();
         this.var_2381 = param1.readBoolean();
         this.var_2375 = param1.readBoolean();
         this.var_2377 = param1.readInteger();
         this.var_2376 = param1.readInteger();
         this.var_2374 = param1.readBoolean();
         this.var_2373 = param1.readInteger();
         this.var_2379 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_924;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2371;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2372;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2378;
      }
      
      public function get responseType() : int
      {
         return this.var_2380;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2381;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2375;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2377;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2376;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2374;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2373;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2379;
      }
   }
}
