// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Me _$MeFromJson(Map<String, dynamic> json) {
  return Me(
    json['Id'] as String,
    json['name'] as String,
    (json['emails'] as List)
        ?.map((e) =>
            e == null ? null : EmailsBean.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['status'] as String,
    json['statusConnection'] as String,
    json['username'] as String,
    json['utcOffset'] as int,
    json['active'] as bool,
    (json['roles'] as List)?.map((e) => e as String)?.toList(),
    json['settings'] == null
        ? null
        : SettingsBean.fromJson(json['settings'] as Map<String, dynamic>),
    json['avatarUrl'] as String,
    json['success'] as bool,
  );
}

Map<String, dynamic> _$MeToJson(Me instance) => <String, dynamic>{
      'Id': instance.Id,
      'name': instance.name,
      'emails': instance.emails,
      'status': instance.status,
      'statusConnection': instance.statusConnection,
      'username': instance.username,
      'utcOffset': instance.utcOffset,
      'active': instance.active,
      'roles': instance.roles,
      'settings': instance.settings,
      'avatarUrl': instance.avatarUrl,
      'success': instance.success,
    };

SettingsBean _$SettingsBeanFromJson(Map<String, dynamic> json) {
  return SettingsBean(
    json['preferences'] == null
        ? null
        : PreferencesBean.fromJson(json['preferences'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SettingsBeanToJson(SettingsBean instance) =>
    <String, dynamic>{
      'preferences': instance.preferences,
    };

PreferencesBean _$PreferencesBeanFromJson(Map<String, dynamic> json) {
  return PreferencesBean(
    json['enableAutoAway'] as bool,
    json['idleTimeoutLimit'] as int,
    json['desktopNotificationDuration'] as int,
    json['audioNotifications'] as String,
    json['desktopNotifications'] as String,
    json['mobileNotifications'] as String,
    json['unreadAlert'] as bool,
    json['useEmojis'] as bool,
    json['convertAsciiEmoji'] as bool,
    json['autoImageLoad'] as bool,
    json['saveMobileBandwidth'] as bool,
    json['collapseMediaByDefault'] as bool,
    json['hideUsernames'] as bool,
    json['hideRoles'] as bool,
    json['hideFlexTab'] as bool,
    json['hideAvatars'] as bool,
    json['roomsListExhibitionMode'] as String,
    json['sidebarViewMode'] as String,
    json['sidebarHideAvatar'] as bool,
    json['sidebarShowUnread'] as bool,
    json['sidebarShowFavorites'] as bool,
    json['sendOnEnter'] as String,
    json['messageViewMode'] as int,
    json['emailNotificationMode'] as String,
    json['roomCounterSidebar'] as bool,
    json['newRoomNotification'] as String,
    json['newMessageNotification'] as String,
    json['muteFocusedConversations'] as bool,
    json['notificationsSoundVolume'] as int,
  );
}

Map<String, dynamic> _$PreferencesBeanToJson(PreferencesBean instance) =>
    <String, dynamic>{
      'enableAutoAway': instance.enableAutoAway,
      'idleTimeoutLimit': instance.idleTimeoutLimit,
      'desktopNotificationDuration': instance.desktopNotificationDuration,
      'audioNotifications': instance.audioNotifications,
      'desktopNotifications': instance.desktopNotifications,
      'mobileNotifications': instance.mobileNotifications,
      'unreadAlert': instance.unreadAlert,
      'useEmojis': instance.useEmojis,
      'convertAsciiEmoji': instance.convertAsciiEmoji,
      'autoImageLoad': instance.autoImageLoad,
      'saveMobileBandwidth': instance.saveMobileBandwidth,
      'collapseMediaByDefault': instance.collapseMediaByDefault,
      'hideUsernames': instance.hideUsernames,
      'hideRoles': instance.hideRoles,
      'hideFlexTab': instance.hideFlexTab,
      'hideAvatars': instance.hideAvatars,
      'roomsListExhibitionMode': instance.roomsListExhibitionMode,
      'sidebarViewMode': instance.sidebarViewMode,
      'sidebarHideAvatar': instance.sidebarHideAvatar,
      'sidebarShowUnread': instance.sidebarShowUnread,
      'sidebarShowFavorites': instance.sidebarShowFavorites,
      'sendOnEnter': instance.sendOnEnter,
      'messageViewMode': instance.messageViewMode,
      'emailNotificationMode': instance.emailNotificationMode,
      'roomCounterSidebar': instance.roomCounterSidebar,
      'newRoomNotification': instance.newRoomNotification,
      'newMessageNotification': instance.newMessageNotification,
      'muteFocusedConversations': instance.muteFocusedConversations,
      'notificationsSoundVolume': instance.notificationsSoundVolume,
    };

EmailsBean _$EmailsBeanFromJson(Map<String, dynamic> json) {
  return EmailsBean(
    json['address'] as String,
    json['verified'] as bool,
  );
}

Map<String, dynamic> _$EmailsBeanToJson(EmailsBean instance) =>
    <String, dynamic>{
      'address': instance.address,
      'verified': instance.verified,
    };
