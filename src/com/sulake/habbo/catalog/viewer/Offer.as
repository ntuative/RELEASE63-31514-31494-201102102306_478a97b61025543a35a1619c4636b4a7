package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1450:String = "pricing_model_unknown";
      
      public static const const_511:String = "pricing_model_single";
      
      public static const const_513:String = "pricing_model_multi";
      
      public static const const_474:String = "pricing_model_bundle";
      
      public static const const_1545:String = "price_type_none";
      
      public static const const_854:String = "price_type_credits";
      
      public static const const_972:String = "price_type_activitypoints";
      
      public static const const_1084:String = "price_type_credits_and_activitypoints";
       
      
      private var var_782:String;
      
      private var var_1208:String;
      
      private var _offerId:int;
      
      private var var_1921:String;
      
      private var var_1206:int;
      
      private var var_1207:int;
      
      private var var_1686:int;
      
      private var var_413:ICatalogPage;
      
      private var var_781:IProductContainer;
      
      private var var_2701:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1921 = param1.localizationId;
         this.var_1206 = param1.priceInCredits;
         this.var_1207 = param1.priceInActivityPoints;
         this.var_1686 = param1.activityPointType;
         this.var_413 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_413;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1921;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1206;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1207;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1686;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_781;
      }
      
      public function get pricingModel() : String
      {
         return this.var_782;
      }
      
      public function get priceType() : String
      {
         return this.var_1208;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2701;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2701 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1921 = "";
         this.var_1206 = 0;
         this.var_1207 = 0;
         this.var_1686 = 0;
         this.var_413 = null;
         if(this.var_781 != null)
         {
            this.var_781.dispose();
            this.var_781 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_782)
         {
            case const_511:
               this.var_781 = new SingleProductContainer(this,param1);
               break;
            case const_513:
               this.var_781 = new MultiProductContainer(this,param1);
               break;
            case const_474:
               this.var_781 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_782);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_782 = const_511;
            }
            else
            {
               this.var_782 = const_513;
            }
         }
         else if(param1.length > 1)
         {
            this.var_782 = const_474;
         }
         else
         {
            this.var_782 = const_1450;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1206 > 0 && this.var_1207 > 0)
         {
            this.var_1208 = const_1084;
         }
         else if(this.var_1206 > 0)
         {
            this.var_1208 = const_854;
         }
         else if(this.var_1207 > 0)
         {
            this.var_1208 = const_972;
         }
         else
         {
            this.var_1208 = const_1545;
         }
      }
   }
}
