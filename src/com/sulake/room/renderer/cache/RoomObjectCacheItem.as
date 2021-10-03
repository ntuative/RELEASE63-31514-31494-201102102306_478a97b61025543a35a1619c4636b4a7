package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_828:RoomObjectLocationCacheItem = null;
      
      private var var_194:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_828 = new RoomObjectLocationCacheItem(param1);
         this.var_194 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_828;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_194;
      }
      
      public function dispose() : void
      {
         if(this.var_828 != null)
         {
            this.var_828.dispose();
            this.var_828 = null;
         }
         if(this.var_194 != null)
         {
            this.var_194.dispose();
            this.var_194 = null;
         }
      }
   }
}
