package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_864:IAssetLoader;
      
      private var var_1918:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1918 = param1;
         this.var_864 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1918;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_864;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_864 != null)
            {
               if(!this.var_864.disposed)
               {
                  this.var_864.dispose();
                  this.var_864 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
