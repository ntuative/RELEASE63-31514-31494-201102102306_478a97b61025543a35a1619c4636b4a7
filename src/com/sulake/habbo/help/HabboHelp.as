package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.register.RegistrationUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_178:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_284:IHabboCommunicationManager;
      
      private var var_873:IHabboLocalizationManager;
      
      private var var_872:IHabboConfigurationManager;
      
      private var var_384:ISessionDataManager;
      
      private var var_1090:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_62:HelpUI;
      
      private var var_168:TutorialUI;
      
      private var var_706:HotelMergeUI;
      
      private var var_871:RegistrationUI;
      
      private var var_1344:CallForHelpData;
      
      private var var_2361:UserRegistry;
      
      private var var_2360:String = "";
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1344 = new CallForHelpData();
         this.var_2361 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1090 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2360 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2360;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1344;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2361;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_873;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_178;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_384;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_168;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_706;
      }
      
      override public function dispose() : void
      {
         if(this.var_62 != null)
         {
            this.var_62.dispose();
            this.var_62 = null;
         }
         if(this.var_168 != null)
         {
            this.var_168.dispose();
            this.var_168 = null;
         }
         if(this.var_706)
         {
            this.var_706.dispose();
            this.var_706 = null;
         }
         if(this.var_871 != null)
         {
            this.var_871.dispose();
            this.var_871 = null;
         }
         if(this.var_1090 != null)
         {
            this.var_1090.dispose();
            this.var_1090 = null;
         }
         this._incomingMessages = null;
         if(this.var_178)
         {
            this.var_178.release(new IIDHabboToolbar());
            this.var_178 = null;
         }
         if(this.var_873)
         {
            this.var_873.release(new IIDHabboLocalizationManager());
            this.var_873 = null;
         }
         if(this.var_284)
         {
            this.var_284.release(new IIDHabboCommunicationManager());
            this.var_284 = null;
         }
         if(this.var_872)
         {
            this.var_872.release(new IIDHabboConfigurationManager());
            this.var_872 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_384 != null)
         {
            this.var_384.release(new IIDSessionDataManager());
            this.var_384 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_62 != null)
         {
            this.var_62.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_62 != null)
         {
            this.var_62.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_62 != null)
         {
            this.var_62.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_62 != null)
         {
            this.var_62.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_62 != null)
         {
            this.var_62.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1090;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_284 != null && param1 != null)
         {
            this.var_284.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_872 == null)
         {
            return param1;
         }
         return this.var_872.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_62 != null)
         {
            this.var_62.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_62 != null)
         {
            this.var_62.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1344.reportedUserId = param1;
         this.var_1344.reportedUserName = param2;
         this.var_62.showUI(HabboHelpViewEnum.const_390);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_62 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_62.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_62 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_62 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_873,this.var_178);
         }
         return this.var_62 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         if(this.var_168 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_168 = new TutorialUI(this);
         }
         return this.var_168 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_168 != null)
         {
            this.var_168.dispose();
            this.var_168 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_706)
         {
            this.var_706 = new HotelMergeUI(this);
         }
         this.var_706.startNameChange();
      }
      
      public function initRegistrationUI() : void
      {
         if(!this.var_871)
         {
            this.var_871 = new RegistrationUI(this);
         }
         this.var_871.showRegistrationView();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_168 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_168.update(param1,param2,param3);
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_284 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_284);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_178 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_873 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_872 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_86,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_94,this.onRoomSessionEvent);
         this.var_178.events.addEventListener(HabboToolbarEvent.const_65,this.onHabboToolbarEvent);
         this.var_178.events.addEventListener(HabboToolbarEvent.const_39,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_384 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_86:
               if(this.var_62 != null)
               {
                  this.var_62.setRoomSessionStatus(true);
               }
               if(this.var_168 != null)
               {
                  this.var_168.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_94:
               if(this.var_62 != null)
               {
                  this.var_62.setRoomSessionStatus(false);
               }
               if(this.var_168 != null)
               {
                  this.var_168.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
         }
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_178 != null)
         {
            this.var_178.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_118,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_65)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_39)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
   }
}
