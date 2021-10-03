package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_1918:String;
      
      private var var_2643:String;
      
      private var var_424:IAsset;
      
      private var var_1439:Boolean;
      
      private var var_1438:Boolean;
      
      private var var_2644:Boolean;
      
      private var _offsetX:int;
      
      private var var_1059:int;
      
      private var _width:int;
      
      private var _height:int;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         var _loc10_:* = null;
         super();
         this.var_1918 = param1;
         this.var_2643 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            _loc10_ = _loc9_.content as BitmapData;
         }
         if(_loc10_ != null)
         {
            this.var_424 = param3;
            this._width = _loc10_.width;
            this._height = _loc10_.height;
         }
         else
         {
            this.var_424 = null;
            this._width = 0;
            this._height = 0;
         }
         this.var_1439 = param4;
         this.var_1438 = param5;
         this._offsetX = param6;
         this.var_1059 = param7;
         this.var_2644 = param8;
      }
      
      public function dispose() : void
      {
         this.var_424 = null;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1438;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1439;
      }
      
      public function get assetName() : String
      {
         return this.var_1918;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2643;
      }
      
      public function get asset() : IAsset
      {
         return this.var_424;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2644;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1439)
         {
            return this._offsetX;
         }
         return -(this._width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1438)
         {
            return this.var_1059;
         }
         return -(this._height + this.var_1059);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1059;
      }
   }
}
