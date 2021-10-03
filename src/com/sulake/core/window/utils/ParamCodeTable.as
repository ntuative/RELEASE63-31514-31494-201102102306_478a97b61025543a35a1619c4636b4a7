package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_181;
         param1["bound_to_parent_rect"] = const_95;
         param1["child_window"] = const_1080;
         param1["embedded_controller"] = const_1181;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_685;
         param1["mouse_dragging_target"] = const_251;
         param1["mouse_dragging_trigger"] = const_342;
         param1["mouse_scaling_target"] = const_278;
         param1["mouse_scaling_trigger"] = const_527;
         param1["horizontal_mouse_scaling_trigger"] = const_242;
         param1["vertical_mouse_scaling_trigger"] = const_256;
         param1["observe_parent_input_events"] = const_970;
         param1["optimize_region_to_layout_size"] = const_502;
         param1["parent_window"] = const_1164;
         param1["relative_horizontal_scale_center"] = const_167;
         param1["relative_horizontal_scale_fixed"] = const_144;
         param1["relative_horizontal_scale_move"] = const_327;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1000;
         param1["relative_scale_fixed"] = const_686;
         param1["relative_scale_move"] = const_1071;
         param1["relative_scale_strech"] = const_968;
         param1["relative_vertical_scale_center"] = const_183;
         param1["relative_vertical_scale_fixed"] = const_126;
         param1["relative_vertical_scale_move"] = const_396;
         param1["relative_vertical_scale_strech"] = const_388;
         param1["on_resize_align_left"] = const_794;
         param1["on_resize_align_right"] = const_523;
         param1["on_resize_align_center"] = const_562;
         param1["on_resize_align_top"] = const_892;
         param1["on_resize_align_bottom"] = const_430;
         param1["on_resize_align_middle"] = const_484;
         param1["on_accommodate_align_left"] = const_1100;
         param1["on_accommodate_align_right"] = const_510;
         param1["on_accommodate_align_center"] = const_783;
         param1["on_accommodate_align_top"] = const_1151;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_706;
         param1["route_input_events_to_parent"] = const_545;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1049;
         param1["scalable_with_mouse"] = const_1069;
         param1["reflect_horizontal_resize_to_parent"] = const_425;
         param1["reflect_vertical_resize_to_parent"] = const_442;
         param1["reflect_resize_to_parent"] = const_284;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
