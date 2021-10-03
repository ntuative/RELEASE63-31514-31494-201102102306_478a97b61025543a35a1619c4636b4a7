package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_496:int = 0;
      
      public static const const_172:int = 1;
      
      public static const const_114:int = 2;
      
      public static const const_791:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1618:String;
      
      private var var_2037:int;
      
      private var var_1257:int;
      
      private var var_2036:int;
      
      private var var_2038:int;
      
      private var var_792:Array;
      
      private var var_2035:Array;
      
      private var var_2039:int;
      
      private var var_2034:Boolean;
      
      private var var_2033:Boolean;
      
      private var var_2031:Boolean;
      
      private var var_2032:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2034;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2034 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2033;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2033 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2031;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2031 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2032;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2032 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1618;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1618 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2037;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2037 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1257;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1257 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2036;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2036 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2038;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2038 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_792;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_792 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2035;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2035 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2039;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2039 = param1;
      }
   }
}
