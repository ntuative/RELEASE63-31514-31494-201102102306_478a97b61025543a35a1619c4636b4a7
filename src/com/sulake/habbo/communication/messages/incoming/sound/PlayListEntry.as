package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2576:int;
      
      private var var_2707:int;
      
      private var var_2706:String;
      
      private var var_2704:String;
      
      private var var_2705:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2576 = param1;
         this.var_2707 = param2;
         this.var_2706 = param3;
         this.var_2704 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2576;
      }
      
      public function get length() : int
      {
         return this.var_2707;
      }
      
      public function get name() : String
      {
         return this.var_2706;
      }
      
      public function get creator() : String
      {
         return this.var_2704;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2705;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2705 = param1;
      }
   }
}
