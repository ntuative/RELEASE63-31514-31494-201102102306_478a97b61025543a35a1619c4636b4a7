package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2304:String;
      
      private var var_1636:String;
      
      private var var_2305:String;
      
      private var var_1635:Boolean;
      
      private var var_1634:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2304 = String(param1["set-type"]);
         this.var_1636 = String(param1["flipped-set-type"]);
         this.var_2305 = String(param1["remove-set-type"]);
         this.var_1635 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1634 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1634;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1634 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2304;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1636;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2305;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1635;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1635 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1636 = param1;
      }
   }
}
