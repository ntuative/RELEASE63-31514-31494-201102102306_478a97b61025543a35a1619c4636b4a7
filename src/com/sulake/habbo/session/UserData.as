package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_907:String = "";
      
      private var var_550:String = "";
      
      private var var_2226:String = "";
      
      private var var_2222:int;
      
      private var var_2227:int = 0;
      
      private var var_2223:String = "";
      
      private var var_2229:int = 0;
      
      private var var_2224:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2222;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2222 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_907;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_907 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_550 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2226;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2226 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2227;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2227 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2223;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2223 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2229;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2229 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2224;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2224 = param1;
      }
   }
}
