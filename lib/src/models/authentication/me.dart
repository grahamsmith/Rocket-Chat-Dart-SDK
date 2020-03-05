import 'package:json_annotation/json_annotation.dart';

part 'me.g.dart';

/// id : "aobEdbYhXfu5hkeqG"
/// name : "Example User"
/// emails : [{"address":"example@example.com","verified":true}]
/// status : "offline"
/// statusConnection : "offline"
/// username : "example"
/// utcOffset : 0
/// active : true
/// roles : ["user","admin"]
/// settings : {"preferences":{"enableAutoAway":false,"idleTimeoutLimit":300,"desktopNotificationDuration":0,"audioNotifications":"mentions","desktopNotifications":"mentions","mobileNotifications":"mentions","unreadAlert":true,"useEmojis":true,"convertAsciiEmoji":true,"autoImageLoad":true,"saveMobileBandwidth":true,"collapseMediaByDefault":false,"hideUsernames":false,"hideRoles":false,"hideFlexTab":false,"hideAvatars":false,"roomsListExhibitionMode":"category","sidebarViewMode":"medium","sidebarHideAvatar":false,"sidebarShowUnread":false,"sidebarShowFavorites":true,"sendOnEnter":"normal","messageViewMode":0,"emailNotificationMode":"all","roomCounterSidebar":false,"newRoomNotification":"door","newMessageNotification":"chime","muteFocusedConversations":true,"notificationsSoundVolume":100}}
/// customFields : {"twitter":"@userstwi"}
/// avatarUrl : "http://localhost:3000/avatar/test"
/// success : true

@JsonSerializable()
class Me {
  String Id;
  String name;
  List<EmailsBean> emails;
  String status;
  String statusConnection;
  String username;
  int utcOffset;
  bool active;
  List<String> roles;
  SettingsBean settings;
  String avatarUrl;
  bool success;

  Me(this.Id, this.name, this.emails, this.status, this.statusConnection, this.username, this.utcOffset, this.active, this.roles, this.settings, this.avatarUrl, this.success);

  factory Me.fromJson(Map<String, dynamic> json) => _$MeFromJson(json);
  Map<String, dynamic> toJson() => _$MeToJson(this);

}


/// preferences : {"enableAutoAway":false,"idleTimeoutLimit":300,"desktopNotificationDuration":0,"audioNotifications":"mentions","desktopNotifications":"mentions","mobileNotifications":"mentions","unreadAlert":true,"useEmojis":true,"convertAsciiEmoji":true,"autoImageLoad":true,"saveMobileBandwidth":true,"collapseMediaByDefault":false,"hideUsernames":false,"hideRoles":false,"hideFlexTab":false,"hideAvatars":false,"roomsListExhibitionMode":"category","sidebarViewMode":"medium","sidebarHideAvatar":false,"sidebarShowUnread":false,"sidebarShowFavorites":true,"sendOnEnter":"normal","messageViewMode":0,"emailNotificationMode":"all","roomCounterSidebar":false,"newRoomNotification":"door","newMessageNotification":"chime","muteFocusedConversations":true,"notificationsSoundVolume":100}
@JsonSerializable()
class SettingsBean {

  PreferencesBean preferences;

  SettingsBean(this.preferences);

  factory SettingsBean.fromJson(Map<String, dynamic> json) => _$SettingsBeanFromJson(json);
  Map<String, dynamic> toJson() => _$SettingsBeanToJson(this);
}

/// enableAutoAway : false
/// idleTimeoutLimit : 300
/// desktopNotificationDuration : 0
/// audioNotifications : "mentions"
/// desktopNotifications : "mentions"
/// mobileNotifications : "mentions"
/// unreadAlert : true
/// useEmojis : true
/// convertAsciiEmoji : true
/// autoImageLoad : true
/// saveMobileBandwidth : true
/// collapseMediaByDefault : false
/// hideUsernames : false
/// hideRoles : false
/// hideFlexTab : false
/// hideAvatars : false
/// roomsListExhibitionMode : "category"
/// sidebarViewMode : "medium"
/// sidebarHideAvatar : false
/// sidebarShowUnread : false
/// sidebarShowFavorites : true
/// sendOnEnter : "normal"
/// messageViewMode : 0
/// emailNotificationMode : "all"
/// roomCounterSidebar : false
/// newRoomNotification : "door"
/// newMessageNotification : "chime"
/// muteFocusedConversations : true
/// notificationsSoundVolume : 100

@JsonSerializable()
class PreferencesBean {
  bool enableAutoAway;
  int idleTimeoutLimit;
  int desktopNotificationDuration;
  String audioNotifications;
  String desktopNotifications;
  String mobileNotifications;
  bool unreadAlert;
  bool useEmojis;
  bool convertAsciiEmoji;
  bool autoImageLoad;
  bool saveMobileBandwidth;
  bool collapseMediaByDefault;
  bool hideUsernames;
  bool hideRoles;
  bool hideFlexTab;
  bool hideAvatars;
  String roomsListExhibitionMode;
  String sidebarViewMode;
  bool sidebarHideAvatar;
  bool sidebarShowUnread;
  bool sidebarShowFavorites;
  String sendOnEnter;
  int messageViewMode;
  String emailNotificationMode;
  bool roomCounterSidebar;
  String newRoomNotification;
  String newMessageNotification;
  bool muteFocusedConversations;
  int notificationsSoundVolume;

  PreferencesBean(this.enableAutoAway, this.idleTimeoutLimit, this.desktopNotificationDuration, this.audioNotifications, this.desktopNotifications, this.mobileNotifications, this.unreadAlert, this.useEmojis, this.convertAsciiEmoji, this.autoImageLoad, this.saveMobileBandwidth, this.collapseMediaByDefault, this.hideUsernames, this.hideRoles, this.hideFlexTab, this.hideAvatars, this.roomsListExhibitionMode, this.sidebarViewMode, this.sidebarHideAvatar, this.sidebarShowUnread, this.sidebarShowFavorites, this.sendOnEnter, this.messageViewMode, this.emailNotificationMode, this.roomCounterSidebar, this.newRoomNotification, this.newMessageNotification, this.muteFocusedConversations, this.notificationsSoundVolume);

  factory PreferencesBean.fromJson(Map<String, dynamic> json) => _$PreferencesBeanFromJson(json);
  Map<String, dynamic> toJson() => _$PreferencesBeanToJson(this);
}

/// address : "example@example.com"
/// verified : true

@JsonSerializable()
class EmailsBean {
  String address;
  bool verified;

  EmailsBean(this.address, this.verified);

  factory EmailsBean.fromJson(Map<String, dynamic> json) => _$EmailsBeanFromJson(json);
  Map<String, dynamic> toJson() => _$EmailsBeanToJson(this);
}