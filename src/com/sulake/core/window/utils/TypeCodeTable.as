package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_822;
         param1["bitmap"] = const_705;
         param1["border"] = const_847;
         param1["border_notify"] = const_1567;
         param1["button"] = const_518;
         param1["button_thick"] = const_780;
         param1["button_icon"] = const_1437;
         param1["button_group_left"] = const_765;
         param1["button_group_center"] = const_736;
         param1["button_group_right"] = const_766;
         param1["canvas"] = const_639;
         param1["checkbox"] = const_632;
         param1["closebutton"] = const_1120;
         param1["container"] = const_391;
         param1["container_button"] = const_768;
         param1["display_object_wrapper"] = const_751;
         param1["dropmenu"] = const_516;
         param1["dropmenu_item"] = const_515;
         param1["frame"] = const_378;
         param1["frame_notify"] = const_1485;
         param1["header"] = const_711;
         param1["html"] = const_1117;
         param1["icon"] = const_1160;
         param1["itemgrid"] = const_963;
         param1["itemgrid_horizontal"] = const_463;
         param1["itemgrid_vertical"] = const_785;
         param1["itemlist"] = const_1045;
         param1["itemlist_horizontal"] = const_347;
         param1["itemlist_vertical"] = const_394;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1419;
         param1["menu"] = const_1374;
         param1["menu_item"] = const_1478;
         param1["submenu"] = const_1061;
         param1["minimizebox"] = const_1445;
         param1["notify"] = const_1385;
         param1["null"] = const_849;
         param1["password"] = const_738;
         param1["radiobutton"] = const_799;
         param1["region"] = const_866;
         param1["restorebox"] = const_1508;
         param1["scaler"] = const_646;
         param1["scaler_horizontal"] = const_1493;
         param1["scaler_vertical"] = const_1350;
         param1["scrollbar_horizontal"] = const_500;
         param1["scrollbar_vertical"] = const_648;
         param1["scrollbar_slider_button_up"] = const_1092;
         param1["scrollbar_slider_button_down"] = const_1178;
         param1["scrollbar_slider_button_left"] = const_1076;
         param1["scrollbar_slider_button_right"] = const_975;
         param1["scrollbar_slider_bar_horizontal"] = const_1129;
         param1["scrollbar_slider_bar_vertical"] = const_1114;
         param1["scrollbar_slider_track_horizontal"] = const_1189;
         param1["scrollbar_slider_track_vertical"] = const_1039;
         param1["scrollable_itemlist"] = const_1482;
         param1["scrollable_itemlist_vertical"] = const_424;
         param1["scrollable_itemlist_horizontal"] = const_989;
         param1["selector"] = const_782;
         param1["selector_list"] = const_810;
         param1["submenu"] = const_1061;
         param1["tab_button"] = const_557;
         param1["tab_container_button"] = const_1075;
         param1["tab_context"] = const_382;
         param1["tab_content"] = const_1194;
         param1["tab_selector"] = const_629;
         param1["text"] = const_440;
         param1["input"] = const_631;
         param1["toolbar"] = const_1509;
         param1["tooltip"] = const_392;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
