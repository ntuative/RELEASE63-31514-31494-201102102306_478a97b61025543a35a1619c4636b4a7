package com.sulake.room.renderer.utils
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class ExtendedSprite extends Bitmap
   {
       
      
      private var var_1271:int = 128;
      
      private var var_1270:Boolean = false;
      
      private var var_2748:Point;
      
      private var var_2020:String = "";
      
      private var var_1513:String = "";
      
      private var var_2016:Boolean = false;
      
      private var var_2015:Boolean = false;
      
      private var _bitmapData:ExtendedBitmapData = null;
      
      private var _width:int = 0;
      
      private var _height:int = 0;
      
      private var var_1536:int = -1;
      
      private var var_1535:int = -1;
      
      public function ExtendedSprite()
      {
         super();
         this.var_2748 = new Point();
         cacheAsBitmap = false;
         this.enableAlpha();
      }
      
      public function get alphaActive() : Boolean
      {
         return this.var_1270;
      }
      
      public function get alphaTolerance() : int
      {
         return this.var_1271;
      }
      
      public function set alphaTolerance(param1:int) : void
      {
         this.var_1271 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2020;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2020 = param1;
      }
      
      public function get identifier() : String
      {
         return this.var_1513;
      }
      
      public function set identifier(param1:String) : void
      {
         this.var_1513 = param1;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2015;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2015 = param1;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2016;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2016 = param1;
      }
      
      public function dispose() : void
      {
         if(this._bitmapData != null)
         {
            this._bitmapData.dispose();
            this._bitmapData = null;
         }
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         var _loc2_:* = null;
         if(param1 == bitmapData)
         {
            return;
         }
         if(this._bitmapData != null)
         {
            this._bitmapData.dispose();
            this._bitmapData = null;
         }
         if(param1 != null)
         {
            this._width = param1.width;
            this._height = param1.height;
            _loc2_ = param1 as ExtendedBitmapData;
            if(_loc2_ != null)
            {
               _loc2_.addReference();
               this._bitmapData = _loc2_;
            }
         }
         else
         {
            this._width = 0;
            this._height = 0;
            this.var_1536 = -1;
            this.var_1535 = -1;
         }
         super.bitmapData = param1;
      }
      
      public function needsUpdate(param1:int, param2:int) : Boolean
      {
         if(param1 != this.var_1536 || param2 != this.var_1535)
         {
            this.var_1536 = param1;
            this.var_1535 = param2;
            return true;
         }
         if(this._bitmapData != null && this._bitmapData.disposed)
         {
            return true;
         }
         return false;
      }
      
      public function disableAlpha() : void
      {
         this.var_1270 = false;
      }
      
      public function enableAlpha() : void
      {
         this.disableAlpha();
         this.var_1270 = true;
      }
      
      override public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = false) : Boolean
      {
         return this.hitTest(param1,param2);
      }
      
      public function hitTest(param1:int, param2:int) : Boolean
      {
         if(this.var_1271 > 255 || bitmapData == null)
         {
            return false;
         }
         if(param1 < 0 || param2 < 0 || param1 >= this._width || param2 >= this._height)
         {
            return false;
         }
         return this.hitTestBitmapData(param1,param2);
      }
      
      private function hitTestBitmapData(param1:int, param2:int) : Boolean
      {
         var pixel:uint = 0;
         var x:int = param1;
         var y:int = param2;
         var retVal:Boolean = false;
         try
         {
            if(!this.var_1270 || true)
            {
               retVal = true;
            }
            else
            {
               pixel = bitmapData.getPixel32(x,y);
               pixel >>= 24;
               retVal = pixel > this.var_1271;
            }
         }
         catch(e:Error)
         {
         }
         return retVal;
      }
   }
}
