package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_263:String = "ROE_MOUSE_CLICK";
      
      public static const const_1880:String = "ROE_MOUSE_ENTER";
      
      public static const const_528:String = "ROE_MOUSE_MOVE";
      
      public static const const_1750:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1899:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_416:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1497:String = "";
      
      private var var_2179:Boolean;
      
      private var var_2178:Boolean;
      
      private var var_2177:Boolean;
      
      private var var_2176:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1497 = param2;
         this.var_2179 = param5;
         this.var_2178 = param6;
         this.var_2177 = param7;
         this.var_2176 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1497;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2179;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2178;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2177;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2176;
      }
   }
}
