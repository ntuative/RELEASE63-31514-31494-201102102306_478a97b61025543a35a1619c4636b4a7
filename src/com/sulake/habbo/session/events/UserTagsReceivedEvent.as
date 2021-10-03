package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class UserTagsReceivedEvent extends Event
   {
      
      public static const const_152:String = "UTRE_USER_TAGS_RECEIVED";
       
      
      private var _userId:int;
      
      private var var_792:Array;
      
      public function UserTagsReceivedEvent(param1:int, param2:Array, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_152,param3,param4);
         this._userId = param1;
         this.var_792 = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get tags() : Array
      {
         return this.var_792;
      }
   }
}
