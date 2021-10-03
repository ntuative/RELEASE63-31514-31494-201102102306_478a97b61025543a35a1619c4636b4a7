package com.sulake.habbo.session
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.availability.AvailabilityStatusMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.UserObjectEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.UserRightsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.engine.UserChangeMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.pets.PetRespectFailedEvent;
   import com.sulake.habbo.communication.messages.incoming.users.UserNameChangedMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.room.chat.ChatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.pets.RespectPetMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.users.RespectUserMessageComposer;
   import com.sulake.habbo.communication.messages.parser.availability.AvailabilityStatusMessageParser;
   import com.sulake.habbo.communication.messages.parser.handshake.UserObjectMessageParser;
   import com.sulake.habbo.communication.messages.parser.users.UserNameChangedMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.events.HabboSessionFigureUpdatedEvent;
   import com.sulake.habbo.session.furniture.FurnitureDataParser;
   import com.sulake.habbo.session.furniture.IFurniDataListener;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   import com.sulake.habbo.session.product.IProductDataListener;
   import com.sulake.habbo.session.product.ProductDataParser;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IConfirmDialog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class SessionDataManager extends Component implements ISessionDataManager
   {
       
      
      private var _communication:IHabboCommunicationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_15:IRoomSessionManager;
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_550:String;
      
      private var var_812:String;
      
      private var var_1629:String;
      
      private var _respectTotal:int = 0;
      
      private var var_1128:int = 0;
      
      private var var_736:int = 0;
      
      private var var_913:Array;
      
      private var var_1765:GroupDetailsView;
      
      private var var_2526:Boolean;
      
      private var var_2525:Boolean;
      
      private var var_1085:Dictionary;
      
      private var var_607:ProductDataParser;
      
      private var var_491:Map;
      
      private var _wallItems:Map;
      
      private var var_490:Map;
      
      private var var_289:FurnitureDataParser;
      
      private var var_1764:UserTagManager;
      
      private var var_1383:BadgeImageManager;
      
      private var var_1130:HabboGroupInfoManager;
      
      private var var_912:IgnoredUsersManager;
      
      private var var_176:IHabboConfigurationManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var var_1763:Boolean = false;
      
      private var var_1129:Array;
      
      private var var_911:Array;
      
      public function SessionDataManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this.var_913 = [];
         this.var_1764 = new UserTagManager(events);
         this.var_1130 = new HabboGroupInfoManager(this,events);
         this.var_912 = new IgnoredUsersManager(this);
         this.var_1085 = new Dictionary();
         this.var_1129 = [];
         this.var_911 = [];
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboCommunicationManager(),this.onHabboCommunicationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      override public function dispose() : void
      {
         if(this.var_491)
         {
            this.var_491.dispose();
            this.var_491 = null;
         }
         if(this.var_490)
         {
            this.var_490.dispose();
            this.var_490 = null;
         }
         if(this._communication)
         {
            this._communication.release(new IIDHabboCommunicationManager());
            this._communication = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_15)
         {
            this.var_15.release(new IIDHabboRoomSessionManager());
            this.var_15 = null;
         }
         if(this.var_176)
         {
            this.var_176.release(new IIDHabboConfigurationManager());
            this.var_176 = null;
         }
         if(this._localization)
         {
            this._localization.release(new IIDHabboLocalizationManager());
            this._localization = null;
         }
         this.var_911 = null;
         if(this.var_289)
         {
            this.var_289.removeEventListener(FurnitureDataParser.const_111,this.onFurnitureReady);
            this.var_289.dispose();
            this.var_289 = null;
         }
         if(this.var_607)
         {
            this.var_607.removeEventListener(ProductDataParser.const_111,this.onProductsReady);
            this.var_607.dispose();
            this.var_607 = null;
         }
         super.dispose();
      }
      
      private function initBadgeImageManager() : void
      {
         if(this.var_1383 != null)
         {
            return;
         }
         if(this.var_176 == null || this._localization == null)
         {
            return;
         }
         this.var_1383 = new BadgeImageManager(context.root.assets,events,this.var_176,this._localization);
      }
      
      private function onWindowManagerReady(param1:IID, param2:IUnknown) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onHabboCommunicationReady(param1:IID, param2:IUnknown) : void
      {
         this._communication = param2 as IHabboCommunicationManager;
         if(this._communication == null)
         {
            return;
         }
         this._communication.addHabboConnectionMessageEvent(new UserRightsMessageEvent(this.onUserRights));
         this._communication.addHabboConnectionMessageEvent(new UserObjectEvent(this.onUserObject));
         this._communication.addHabboConnectionMessageEvent(new UserChangeMessageEvent(this.onUserChange));
         this._communication.addHabboConnectionMessageEvent(new UserNameChangedMessageEvent(this.onUserNameChange));
         this._communication.addHabboConnectionMessageEvent(new AvailabilityStatusMessageEvent(this.onAvailabilityStatus));
         this._communication.addHabboConnectionMessageEvent(new PetRespectFailedEvent(this.onPetRespectFailed));
         this.var_1764.communication = this._communication;
         this.var_1130.communication = this._communication;
         this.var_912.registerMessageEvents();
      }
      
      private function onConfigurationReady(param1:IID, param2:IUnknown) : void
      {
         var _loc3_:* = null;
         if(param2 == null)
         {
            return;
         }
         this.var_176 = param2 as IHabboConfigurationManager;
         this.initBadgeImageManager();
         if(!this.var_289)
         {
            this.var_491 = new Map();
            this._wallItems = new Map();
            this.var_490 = new Map();
            this.var_289 = new FurnitureDataParser(this.var_491,this._wallItems,this.var_490,this._localization);
            this.var_289.addEventListener(FurnitureDataParser.const_111,this.onFurnitureReady);
            if(this.var_176.keyExists("furnidata.load.url"))
            {
               _loc3_ = this.var_176.getKey("furnidata.load.url");
               this.var_289.loadData(_loc3_);
            }
         }
      }
      
      private function onLocalizationReady(param1:IID, param2:IUnknown) : void
      {
         if(param2 == null)
         {
            return;
         }
         this._localization = param2 as IHabboLocalizationManager;
         this.initBadgeImageManager();
         if(this.var_289)
         {
            this.var_289.localization = this._localization;
            this.var_289.registerFurnitureLocalizations();
         }
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_15 = param2 as IRoomSessionManager;
      }
      
      private function onFurnitureReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         this.var_289.removeEventListener(FurnitureDataParser.const_111,this.onFurnitureReady);
         for each(_loc2_ in this.var_911)
         {
            _loc2_.furniDataReady();
         }
         this.var_911 = [];
      }
      
      private function onUserRights(param1:IMessageEvent) : void
      {
         var _loc2_:UserRightsMessageEvent = param1 as UserRightsMessageEvent;
         this.var_913 = _loc2_.rights;
      }
      
      private function onUserObject(param1:IMessageEvent) : void
      {
         var _loc2_:UserObjectEvent = param1 as UserObjectEvent;
         var _loc3_:UserObjectMessageParser = _loc2_.getParser();
         this._id = _loc3_.id;
         this._name = _loc3_.name;
         this._respectTotal = _loc3_.respectTotal;
         this.var_1128 = _loc3_.method_1;
         this.var_736 = _loc3_.petRespectLeft;
         this.var_550 = _loc3_.figure;
         this.var_812 = _loc3_.sex;
         this.var_1629 = _loc3_.realName;
         this.var_912.initIgnoreList();
      }
      
      private function onUserChange(param1:IMessageEvent) : void
      {
         var _loc2_:UserChangeMessageEvent = param1 as UserChangeMessageEvent;
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.id == -1)
         {
            this.var_550 = _loc2_.figure;
            this.var_812 = _loc2_.sex;
            events.dispatchEvent(new HabboSessionFigureUpdatedEvent(this._id,this.var_550,this.var_812));
         }
      }
      
      private function onUserNameChange(param1:IMessageEvent) : void
      {
         var _loc2_:UserNameChangedMessageEvent = param1 as UserNameChangedMessageEvent;
         if(_loc2_ == null || _loc2_.getParser() == null)
         {
            return;
         }
         var _loc3_:UserNameChangedMessageParser = _loc2_.getParser();
         if(_loc3_.webId == this._id)
         {
            this._name = _loc3_.newName;
         }
      }
      
      private function onAvailabilityStatus(param1:IMessageEvent) : void
      {
         var _loc2_:AvailabilityStatusMessageParser = (param1 as AvailabilityStatusMessageEvent).getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_2526 = _loc2_.isOpen;
         this.var_2525 = _loc2_.onShutDown;
      }
      
      private function onPetRespectFailed(param1:PetRespectFailedEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         ++this.var_736;
      }
      
      public function get systemOpen() : Boolean
      {
         return this.var_2526;
      }
      
      public function get systemShutDown() : Boolean
      {
         return this.var_2525;
      }
      
      public function hasUserRight(param1:String) : Boolean
      {
         if(this.var_913 == null)
         {
            return false;
         }
         return this.var_913.indexOf(param1) >= 0;
      }
      
      public function get userId() : int
      {
         return this._id;
      }
      
      public function get userName() : String
      {
         return this._name;
      }
      
      public function get realName() : String
      {
         return this.var_1629;
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         if(this.var_913 == null)
         {
            return false;
         }
         return this.var_913.indexOf("fuse_any_room_controller") >= 0;
      }
      
      public function getUserTags(param1:int) : Array
      {
         return this.var_1764.getTags(param1);
      }
      
      public function getBadgeImage(param1:String) : BitmapData
      {
         return this.var_1383.getBadgeImage(param1);
      }
      
      public function showGroupBadgeInfo(param1:int) : void
      {
         if(this.var_1765 == null)
         {
            this.var_1765 = new GroupDetailsView(this);
         }
         var _loc2_:HabboGroupDetails = this.var_1130.getGroupDetails(param1);
         if(_loc2_ != null)
         {
            this.var_1765.showGroupDetails(param1);
         }
      }
      
      public function getGroupDetails(param1:int) : HabboGroupDetails
      {
         return this.var_1130.getGroupDetails(param1);
      }
      
      public function getGroupBadgeId(param1:int) : String
      {
         return this.var_1130.getBadgeId(param1);
      }
      
      public function getGroupBadgeImage(param1:String) : BitmapData
      {
         return this.var_1383.getBadgeImage(param1,BadgeImageManager.const_1032);
      }
      
      public function get communication() : IHabboCommunicationManager
      {
         return this._communication;
      }
      
      public function isIgnored(param1:String) : Boolean
      {
         return this.var_912.isIgnored(param1);
      }
      
      public function ignoreUser(param1:String) : void
      {
         this.var_912.ignoreUser(param1);
      }
      
      public function unignoreUser(param1:String) : void
      {
         this.var_912.unignoreUser(param1);
      }
      
      public function get method_1() : int
      {
         return this.var_1128;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_736;
      }
      
      public function giveRespect(param1:int) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(param1 < 0 || this.var_1128 < 1 || _loc2_ == null)
         {
            throw new Error("Failed to give respect to user: " + param1);
         }
         _loc2_.send(new RespectUserMessageComposer(param1));
         this.var_1128 = this.var_1128 - 1;
      }
      
      public function givePetRespect(param1:int) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(param1 < 0 || this.var_736 < 1 || _loc2_ == null)
         {
            throw new Error("Failed to give respect to pet: " + param1);
         }
         _loc2_.send(new RespectPetMessageComposer(param1));
         this.var_736 = this.var_736 - 1;
      }
      
      public function get configuration() : IHabboConfigurationManager
      {
         return this.var_176;
      }
      
      public function getProductData(param1:String) : IProductData
      {
         if(!this.var_1763)
         {
            this.loadProductData();
         }
         return this.var_1085[param1];
      }
      
      public function getFloorItemData(param1:int) : IFurnitureData
      {
         if(this.var_491 == null)
         {
            return null;
         }
         return this.var_491.getValue(param1.toString());
      }
      
      public function getWallItemData(param1:int) : IFurnitureData
      {
         if(this._wallItems == null)
         {
            return null;
         }
         return this._wallItems.getValue(param1.toString());
      }
      
      public function getFloorItemDataByName(param1:String) : IFurnitureData
      {
         if(this.var_490 == null)
         {
            return null;
         }
         return this.getFloorItemData(parseInt(this.var_490.getValue(param1)));
      }
      
      public function getWallItemDataByName(param1:String) : IFurnitureData
      {
         if(this.var_490 == null)
         {
            return null;
         }
         return this.getWallItemData(parseInt(this.var_490.getValue(param1)));
      }
      
      public function openHabboHomePage(param1:int) : void
      {
         var urlString:String = null;
         var userId:int = param1;
         if(this.var_176 != null)
         {
            urlString = this.var_176.getKey("link.format.userpage");
            urlString = urlString.replace("%ID%",String(userId));
            try
            {
               HabboWebTools.navigateToURL(urlString,"habboMain");
            }
            catch(e:Error)
            {
               Logger.log("Error occurred!");
            }
         }
      }
      
      public function pickAllFurniture(param1:int, param2:int) : void
      {
         var roomId:int = param1;
         var roomCategory:int = param2;
         if(this.var_15 == null || this._windowManager == null)
         {
            return;
         }
         var session:IRoomSession = this.var_15.getSession(roomId,roomCategory);
         if(session == null)
         {
            return;
         }
         if(session.isRoomOwner || this.isAnyRoomController)
         {
            this._windowManager.confirm("${generic.alert.title}","${room.confirm.pick_all}",0,function(param1:IConfirmDialog, param2:Event):void
            {
               param1.dispose();
               if(param2.type == WindowEvent.const_174)
               {
                  sendPickAllFurnitureMessage();
               }
            });
         }
      }
      
      public function loadProductData(param1:IProductDataListener = null) : Boolean
      {
         var _loc2_:* = null;
         if(this.var_1763)
         {
            return true;
         }
         if(this.var_1129.indexOf(param1) == -1)
         {
            this.var_1129.push(param1);
         }
         if(this.var_607 == null)
         {
            _loc2_ = this.var_176.getKey("productdata.load.url");
            this.var_607 = new ProductDataParser(_loc2_,this.var_1085);
            this.var_607.addEventListener(ProductDataParser.const_111,this.onProductsReady);
         }
         return false;
      }
      
      private function onProductsReady(param1:Event) : void
      {
         var _loc2_:* = null;
         this.var_607.removeEventListener(ProductDataParser.const_111,this.onProductsReady);
         this.var_1763 = true;
         for each(_loc2_ in this.var_1129)
         {
            if(_loc2_ != null && !_loc2_.disposed)
            {
               _loc2_.productDataReady();
            }
         }
         this.var_1129 = [];
      }
      
      private function sendPickAllFurnitureMessage() : void
      {
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new ChatMessageComposer(":pickall"));
      }
      
      public function get roomSessionManager() : IRoomSessionManager
      {
         return this.var_15;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get gender() : String
      {
         return this.var_812;
      }
      
      public function getFurniData(param1:IFurniDataListener) : Array
      {
         if(this.var_491.length == 0)
         {
            if(this.var_911.indexOf(param1) == -1)
            {
               this.var_911.push(param1);
            }
            return null;
         }
         var _loc2_:Array = this.var_491.getValues();
         return _loc2_.concat(this._wallItems.getValues());
      }
   }
}
