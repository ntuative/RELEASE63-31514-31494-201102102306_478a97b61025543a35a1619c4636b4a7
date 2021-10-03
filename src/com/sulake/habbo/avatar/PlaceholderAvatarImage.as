package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_659:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_730)
         {
            _structure = null;
            _assets = null;
            var_252 = null;
            var_267 = null;
            var_550 = null;
            var_525 = null;
            var_311 = null;
            if(!var_1219 && var_43)
            {
               var_43.dispose();
            }
            var_43 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_683 = null;
            var_730 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_659[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_659[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_356:
               switch(_loc3_)
               {
                  case AvatarAction.const_742:
                  case AvatarAction.const_538:
                  case AvatarAction.const_343:
                  case AvatarAction.const_779:
                  case AvatarAction.const_357:
                  case AvatarAction.const_746:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_274:
            case AvatarAction.const_717:
            case AvatarAction.const_266:
            case AvatarAction.const_753:
            case AvatarAction.const_863:
            case AvatarAction.const_642:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
