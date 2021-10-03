package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1688:int;
      
      private var var_1285:int;
      
      private var var_2173:int;
      
      private var var_2170:int;
      
      private var var_2167:int;
      
      private var _energy:int;
      
      private var var_2168:int;
      
      private var _nutrition:int;
      
      private var var_2171:int;
      
      private var var_2175:int;
      
      private var _ownerName:String;
      
      private var var_2263:int;
      
      private var var_506:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1688;
      }
      
      public function get level() : int
      {
         return this.var_1285;
      }
      
      public function get levelMax() : int
      {
         return this.var_2173;
      }
      
      public function get experience() : int
      {
         return this.var_2170;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2167;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2168;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2171;
      }
      
      public function get ownerId() : int
      {
         return this.var_2175;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2263;
      }
      
      public function get age() : int
      {
         return this.var_506;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1688 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1285 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2173 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2170 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2167 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2168 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2171 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2175 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2263 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_506 = param1;
      }
   }
}
