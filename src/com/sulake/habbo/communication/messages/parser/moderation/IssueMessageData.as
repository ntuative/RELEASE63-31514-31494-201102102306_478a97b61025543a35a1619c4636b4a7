package com.sulake.habbo.communication.messages.parser.moderation
{
   public class IssueMessageData
   {
      
      public static const const_159:int = 1;
      
      public static const const_373:int = 2;
      
      public static const const_1459:int = 3;
       
      
      private var var_2200:int;
      
      private var _state:int;
      
      private var var_1257:int;
      
      private var _reportedCategoryId:int;
      
      private var var_1596:int;
      
      private var var_2205:int;
      
      private var var_2203:int = 0;
      
      private var var_2207:int;
      
      private var var_2199:String;
      
      private var var_1335:int;
      
      private var var_1668:String;
      
      private var var_2206:int;
      
      private var var_2204:String;
      
      private var _message:String;
      
      private var var_2198:int;
      
      private var var_865:String;
      
      private var var_1906:int;
      
      private var var_2202:String;
      
      private var var_321:int;
      
      private var var_2208:String;
      
      private var var_2044:String;
      
      private var var_2201:int;
      
      private var var_2163:int;
      
      public function IssueMessageData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:int, param12:String, param13:String, param14:int, param15:String, param16:int, param17:String, param18:int, param19:String, param20:String, param21:int, param22:int)
      {
         super();
         this.var_2200 = param1;
         this._state = param2;
         this.var_1257 = param3;
         this._reportedCategoryId = param4;
         this.var_1596 = param5;
         this.var_2205 = param6;
         this.var_2207 = param7;
         this.var_2199 = param8;
         this.var_1335 = param9;
         this.var_1668 = param10;
         this.var_2206 = param11;
         this.var_2204 = param12;
         this._message = param13;
         this.var_2198 = param14;
         this.var_865 = param15;
         this.var_1906 = param16;
         this.var_2202 = param17;
         this.var_321 = param18;
         this.var_2208 = param19;
         this.var_2044 = param20;
         this.var_2201 = param21;
         this.var_2163 = param22;
      }
      
      public function get issueId() : int
      {
         return this.var_2200;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1257;
      }
      
      public function get reportedCategoryId() : int
      {
         return this._reportedCategoryId;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1596;
      }
      
      public function get priority() : int
      {
         return this.var_2205 + this.var_2203;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2207;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2199;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1335;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1668;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2206;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2204;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2198;
      }
      
      public function get roomName() : String
      {
         return this.var_865;
      }
      
      public function get roomType() : int
      {
         return this.var_1906;
      }
      
      public function get flatType() : String
      {
         return this.var_2202;
      }
      
      public function get flatId() : int
      {
         return this.var_321;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2208;
      }
      
      public function get roomResources() : String
      {
         return this.var_2044;
      }
      
      public function get unitPort() : int
      {
         return this.var_2201;
      }
      
      public function get worldId() : int
      {
         return this.var_2163;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2203 = param1;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc2_:int = (param1 - this.var_1596) / 1000;
         var _loc3_:int = _loc2_ % 60;
         var _loc4_:int = _loc2_ / 60;
         var _loc5_:int = _loc4_ % 60;
         var _loc6_:int = _loc4_ / 60;
         var _loc7_:String = _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         var _loc9_:String = _loc6_ < 10 ? "0" + _loc6_ : "" + _loc6_;
         return _loc9_ + ":" + _loc8_ + ":" + _loc7_;
      }
   }
}
