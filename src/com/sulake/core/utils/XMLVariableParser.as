package com.sulake.core.utils
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class XMLVariableParser
   {
      
      public static const const_137:String = "hex";
      
      public static const const_38:String = "int";
      
      public static const const_222:String = "uint";
      
      public static const const_221:String = "Number";
      
      public static const const_1451:String = "float";
      
      public static const const_37:String = "Boolean";
      
      public static const const_1395:String = "bool";
      
      public static const const_50:String = "String";
      
      public static const const_220:String = "Point";
      
      public static const const_268:String = "Rectangle";
      
      public static const const_141:String = "Array";
      
      public static const const_207:String = "Map";
      
      private static const const_593:String = "key";
      
      private static const const_926:String = "type";
      
      private static const const_592:String = "value";
      
      private static const const_583:String = "HabboFriendListCom_opened_to_web_popup_xml";
      
      private static const const_1676:String = "false";
      
      private static const X:String = "x";
      
      private static const Y:String = "y";
      
      private static const const_1246:String = "width";
      
      private static const const_1233:String = "height";
      
      private static const const_1241:String = ",";
       
      
      public function XMLVariableParser()
      {
         super();
      }
      
      public static function parseVariableList(param1:XMLList, param2:Map, param3:Array = null) : uint
      {
         var _loc5_:int = 0;
         var _loc4_:uint = param1.length();
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            XMLVariableParser.parseVariableToken(param1[_loc5_],param2,param3);
            _loc5_++;
         }
         return _loc4_;
      }
      
      private static function parseVariableToken(param1:XML, param2:Map, param3:Array = null) : void
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc5_:String = const_50;
         _loc7_ = param1.attribute(const_593);
         if(_loc7_.length() > 0)
         {
            _loc4_ = String(param1.attribute(const_593));
         }
         else
         {
            _loc4_ = param1.child(const_593)[0];
         }
         _loc7_ = param1.attribute(const_926);
         if(_loc7_.length() > 0)
         {
            _loc5_ = String(param1.attribute(const_926));
         }
         _loc7_ = param1.attribute(const_592);
         if(_loc7_.length() > 0)
         {
            _loc6_ = String(param1.attribute(const_592));
         }
         if(_loc6_ != null)
         {
            param2[_loc4_] = XMLVariableParser.castStringToType(_loc6_,_loc5_);
         }
         else
         {
            _loc8_ = param1.child(const_592)[0];
            if(_loc8_ != null)
            {
               _loc9_ = _loc8_.child(0)[0];
               _loc6_ = _loc9_.children()[0];
               _loc5_ = _loc9_.localName();
               param2[_loc4_] = XMLVariableParser.parseValueType(_loc9_,_loc5_);
            }
            else if(_loc5_ == const_207 || _loc5_ == const_141)
            {
               param2[_loc4_] = XMLVariableParser.parseValueType(param1,_loc5_);
            }
         }
         if(param3)
         {
            param3.push(_loc5_);
         }
      }
      
      public static function castStringToType(param1:String, param2:String) : Object
      {
         switch(param2)
         {
            case const_222:
               return uint(param1);
            case const_38:
               return int(param1);
            case const_221:
               return Number(param1);
            case const_1451:
               return Number(param1);
            case const_37:
               return param1 == const_583 || int(param1) > 0;
            case const_1395:
               return param1 == const_583 || int(param1) > 0;
            case const_137:
               return uint(param1);
            case const_141:
               return param1.split(const_1241);
            default:
               return String(param1);
         }
      }
      
      public static function parseValueType(param1:XML, param2:String) : Object
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         switch(param2)
         {
            case const_50:
               return String(param1);
            case const_220:
               _loc4_ = new Point();
               _loc4_.x = Number(param1.attribute(X));
               _loc4_.y = Number(param1.attribute(Y));
               return _loc4_;
            case const_268:
               _loc5_ = new Rectangle();
               _loc5_.x = Number(param1.attribute(X));
               _loc5_.y = Number(param1.attribute(Y));
               _loc5_.width = Number(param1.attribute(const_1246));
               _loc5_.height = Number(param1.attribute(const_1233));
               return _loc5_;
            case const_141:
               _loc3_ = new Map();
               parseVariableList(param1.children(),_loc3_);
               _loc6_ = new Array();
               for(_loc7_ in _loc3_)
               {
                  _loc6_.push(_loc3_[_loc7_]);
               }
               return _loc6_;
            case const_207:
               _loc3_ = new Map();
               XMLVariableParser.parseVariableList(param1.children(),_loc3_);
               return _loc3_;
            default:
               throw new Error("Unable to parse data type \"" + param2 + "\", unknown type!");
         }
      }
   }
}
