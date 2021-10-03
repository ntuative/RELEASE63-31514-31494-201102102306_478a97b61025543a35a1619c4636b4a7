package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2271:int;
      
      private var var_1631:String;
      
      private var var_2273:String;
      
      private var var_2270:Boolean;
      
      private var var_2267:Boolean;
      
      private var var_2268:int;
      
      private var var_2272:String;
      
      private var var_2269:String;
      
      private var var_1629:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2271 = param1.readInteger();
         this.var_1631 = param1.readString();
         this.var_2273 = param1.readString();
         this.var_2270 = param1.readBoolean();
         this.var_2267 = param1.readBoolean();
         param1.readString();
         this.var_2268 = param1.readInteger();
         this.var_2272 = param1.readString();
         this.var_2269 = param1.readString();
         this.var_1629 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2271;
      }
      
      public function get avatarName() : String
      {
         return this.var_1631;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2273;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2270;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2267;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2268;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2272;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2269;
      }
      
      public function get realName() : String
      {
         return this.var_1629;
      }
   }
}
