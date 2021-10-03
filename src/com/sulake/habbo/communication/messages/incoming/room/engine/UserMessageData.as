package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1018:String = "M";
      
      public static const const_1388:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_237:int = 0;
      
      private var _name:String = "";
      
      private var var_2228:int = 0;
      
      private var var_907:String = "";
      
      private var var_550:String = "";
      
      private var var_2226:String = "";
      
      private var var_2222:int;
      
      private var var_2227:int = 0;
      
      private var var_2223:String = "";
      
      private var var_2229:int = 0;
      
      private var var_2224:int = 0;
      
      private var var_2225:String = "";
      
      private var var_167:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_167 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_167)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_166;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_167)
         {
            this.var_166 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_165;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_167)
         {
            this.var_165 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_237;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_167)
         {
            this.var_237 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_167)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2228;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_167)
         {
            this.var_2228 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_907;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_167)
         {
            this.var_907 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_167)
         {
            this.var_550 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2226;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_167)
         {
            this.var_2226 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2222;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_167)
         {
            this.var_2222 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2227;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_167)
         {
            this.var_2227 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2223;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_167)
         {
            this.var_2223 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2229;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_167)
         {
            this.var_2229 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2224;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_167)
         {
            this.var_2224 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2225;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_167)
         {
            this.var_2225 = param1;
         }
      }
   }
}
