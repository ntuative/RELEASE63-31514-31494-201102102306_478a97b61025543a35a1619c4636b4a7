package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_909:int = 20;
      
      private static const const_597:int = 10;
      
      private static const const_1252:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_288:Array;
      
      private var var_746:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_288 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_746)
            {
               this.var_746 = true;
               this.var_288 = new Array();
               this.var_288.push(const_1252);
               this.var_288.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_597)
         {
            if(this.var_746)
            {
               this.var_746 = false;
               this.var_288 = new Array();
               if(_direction == 2)
               {
                  this.var_288.push(const_909 + 5 - param1);
                  this.var_288.push(const_597 + 5 - param1);
               }
               else
               {
                  this.var_288.push(const_909 + param1);
                  this.var_288.push(const_597 + param1);
               }
               this.var_288.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_288.length > 0)
            {
               super.setAnimation(this.var_288.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
