package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2049:String = "";
      
      private var var_812:String;
      
      private var var_1429:Boolean;
      
      private var var_2048:Boolean = true;
      
      private var var_2047:int;
      
      private var var_2050:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2047 = parseInt(param1.@pattern);
         this.var_812 = String(param1.@gender);
         this.var_1429 = Boolean(parseInt(param1.@colorable));
         this.var_2049 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2048 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_812;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1429;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2048;
      }
      
      public function get patternId() : int
      {
         return this.var_2047;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2050;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2050 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2049;
      }
   }
}
