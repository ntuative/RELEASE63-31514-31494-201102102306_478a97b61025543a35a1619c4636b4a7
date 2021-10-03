package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_131:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_124:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1188:String;
      
      private var var_1361:Array;
      
      private var var_1198:Array;
      
      private var var_1851:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1188 = param2;
         this.var_1361 = param3;
         this.var_1198 = param4;
         if(this.var_1198 == null)
         {
            this.var_1198 = [];
         }
         this.var_1851 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1188;
      }
      
      public function get choices() : Array
      {
         return this.var_1361.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1198.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1851;
      }
   }
}
