A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:rocket_chat_dart_sdk/rocket_chat_dart_sdk.dart';

RocketChatClient.getInstance(serverUrl: 'YOUR SERVER URL');
```
## Current Progress

| Endpoint      | State         | Notes  |
| ------------- |:-------------:| -----|
| **Miscellaneous Information** | | |
| /api/info               | | |
| /api/v1/directory       | | |
| /api/v1/shield.svg      | | |
| /api/v1/spotlight       | | |
| /api/v1/statistics      | | |
| /api/v1/statistics.list | | |
| | | |
| **Assets** | | |
| /api/v1/assets.setAsset    | | |
| /api/v1/assets.unsetAsset	 | | |
| | | |
| **AutoTranslate** | | |
| /api/v1/autotranslate.getSupportedLanguages	| | Low Priority ⬇️ |
| /api/v1/autotranslate.saveSetttings	        | | Low Priority ⬇️ |
| /api/v1/autotranslate.translateMessage      | | Low Priority ⬇️ |
| | | |
| **Authentication** | | |
| /api/v1/login [Authenticate with the REST API] | ✅ | |
| /api/v1/login [Authenticate with google]       | | |
| /api/v1/login [Authenticate with facebook]     | | |
| /api/v1/login [Authenticate with twitter]      | | |
| /api/v1/logout                                 | ✅ | |
| /api/v1/me	                                   | ✅ | |
| | | |
| **Users** | | |
| /api/v1/users.presence                      | | |
| /api/v1/users.create	                      | | |
| /api/v1/users.createToken                   | | |
| /api/v1/users.deactivateIdle	              | | |
| /api/v1/users.delete	                      | | |
| /api/v1/users.deleteOwnAccount	            | | |
| /api/v1/users.forgotPassword	              | | |
| /api/v1/users.generatePersonalAccessToken	  | | |
| /api/v1/users.getAvatar                     | | |
| /api/v1/users.getPersonalAccessTokens       | | |
| /api/v1/users.getPreferences                | | |
| /api/v1/users.getPresence	                  | | |
| /api/v1/users.getStatus                     | | |
| /api/v1/users.getUsernameSuggestion         | | |
| /api/v1/users.info	                        | | |
| /api/v1/users.list	                        | | |
| /api/v1/users.regeneratePersonalAccessToken | | |
| /api/v1/users.register                      | | |
| /api/v1/users.removeOtherTokens             | | |
| /api/v1/users.removePersonalAccessToken	    | | |
| /api/v1/users.requestDataDownload           | | |
| /api/v1/users.resetAvatar	                  | | |
| /api/v1/users.setAvatar	                    | | |
| /api/v1/users.setPreferences                | | |
| /api/v1/users.setStatus                     | | |
| /api/v1/users.setActiveStatus	              | | |
| /api/v1/users.update                        | | |
| /api/v1/users.updateOwnBasicInfo            | | |
| | | |
| **Channels** | | |
| /api/v1/channels.addAll | | |
| /api/v1/channels.addLeader | | |
| /api/v1/channels.anonymousread | | |
| /api/v1/channels.archive | | |
| /api/v1/channels.cleanHistory| | |
| /api/v1/channels.close | | |
| /api/v1/channels.counters | | |
| /api/v1/channels.create | | |
| /api/v1/channels.delete | | |
| /api/v1/channels.files	 | | |
| /api/v1/channels.getAllUserMentionsByChannel | | |
| /api/v1/channels.getIntegrations             | | |
| /api/v1/channels.history	                   | | |
| /api/v1/channels.info                        | | |
| /api/v1/channels.invite                      | | |
| /api/v1/channels.join                        | | |
| /api/v1/channels.kick	                       | | |
| /api/v1/channels.leave                       | | |
| /api/v1/channels.list                        | | |
| /api/v1/channels.list.joined                 | | |
| /api/v1/channels.members                     | | |
| /api/v1/channels.messages                    | | |
| /api/v1/channels.moderators	                 | | |
| /api/v1/channels.online                      | | |
| /api/v1/channels.open	                       | | |
| /api/v1/channels.removeleader                | | |
| /api/v1/channels.rename	                     | | |
| /api/v1/channels.roles                       | | |
| /api/v1/channels.setCustomFields             | | |
| /api/v1/channels.setAnnouncement	           | | |
| /api/v1/channels.setDefault		               | | |
| /api/v1/channels.setDescription              | | |
| /api/v1/channels.setJoinCode	               | | |
| /api/v1/channels.setPurpose	                 | | |
| /api/v1/channels.setReadOnly	               | | |
| /api/v1/channels.setTopic                    | | |
| /api/v1/channels.setType	                   | | |
| /api/v1/channels.unarchive                   | | |
| | | |
| **Groups** | | |
| /api/v1/groups.archive         | | |
| /api/v1/groups.addLeader	     | | |
| /api/v1/groups.close           | | |
| /api/v1/groups.counters        | | |
| /api/v1/groups.create          | | |
| /api/v1/groups.delete	         | | |
| /api/v1/groups.files	         | | |
| /api/v1/groups.history         | | |
| /api/v1/groups.info            | | |
| /api/v1/groups.invite          | | |
| /api/v1/groups.kick            | | |
| /api/v1/groups.leave           | | |
| /api/v1/groups.list	           | | |
| /api/v1/groups.listAll	       | | |
| /api/v1/groups.members         | | |
| /api/v1/groups.messages        | | |
| /api/v1/groups.moderators      | | |
| /api/v1/groups.open            | | |
| /api/v1/groups.removeLeader    | | |
| /api/v1/groups.rename	         | | |
| /api/v1/groups.roles	         | | |
| /api/v1/groups.setAnnouncement | | |
| /api/v1/groups.setCustomFields | | |
| /api/v1/groups.setDescription	 | | |
| /api/v1/groups.setPurpose	     | | |
| /api/v1/groups.setReadOnly	   | | |
| /api/v1/groups.setTopic        | | |
| /api/v1/groups.setType	       | | |
| /api/v1/groups.unarchive       | | |
| | | |
| **Chat** | | |
| /api/v1/chat.delete                  | | |
| /api/v1/chat.followMessage           | | |
| /api/v1/chat.getDeletedMessages	     | | |
| /api/v1/chat.getDiscussions          | | |
| /api/v1/chat.getMentionedMessages    | | |
| /api/v1/chat.getMessage              | | |
| /api/v1/chat.getMessageReadReceipts  | | |
| /api/v1/chat.getPinnedMessages	     | | |
| /api/v1/chat.getSnippetedMessages    | | |
| /api/v1/chat.getSnippetedMessageById | | |
| /api/v1/chat.getStarredMessages      | | |
| /api/v1/chat.getThreadMessages       | | |
| /api/v1/chat.getThreadsList	         | | |
| /api/v1/chat.ignoreUser	             | | |
| /api/v1/chat.pinMessage	             | | |
| /api/v1/chat.postMessage	           | ✅ | |
| /api/v1/chat.react	                 | | |
| /api/v1/chat.reportMessage           | | |
| /api/v1/chat.search	                 | | |
| /api/v1/chat.starMessage             | | |
| /api/v1/chat.sendMessage             | ✅ | |
| /api/v1/chat.syncThreadMessages	     | | |
| /api/v1/chat.syncThreadsList         | | |
| /api/v1/chat.unfollowMessage         | | |
| /api/v1/chat.unPinMessage	           | | |
| /api/v1/chat.unStarMessage	         | | |
| /api/v1/chat.update	                 | | |
| | | |
| **Custom Sounds** | | |
| /api/v1/custom-sounds.list | | Low Priority ⬇️ |
| | | |
| **IM** | | |
| /api/v1/im.close	         | | |
| /api/v1/im.counters        | | |
| /api/v1/im.create	         | | |
| /api/v1/im.history         | | |
| /api/v1/im.files	         | | |
| /api/v1/im.members	       | | |
| /api/v1/im.messages	       | | |
| /api/v1/im.messages.others | | |
| /api/v1/im.list            | | |
| /api/v1/im.list.everyone   | | |
| /api/v1/im.open	           | | |
| /api/v1/im.setTopic        | | |
| | | |
| **Integrations** | | |
| /api/v1/integrations.create  | | |
| /api/v1/integrations.get     | | |
| /api/v1/integrations.history | | |
| /api/v1/integrations.list    | | |
| /api/v1/integrations.remove	 | | |
| | | |
| **Invites** | | |
| /api/v1/findOrCreateInvite  | | |
| /api/v1/listInvites	        | | |
| /api/v1/removeInvite        | | |
| /api/v1/useInviteToken      | | |
| /api/v1/validateInviteToken | | |
| | | |
| **Livechat** | | |
| /api/v1/livechat/inquiries.list | | |
| /api/v1/livechat/inquiries.take | | |
| /api/v1/livechat/rooms          | | |
| | | |
| **OAuthApps** | | |
| /api/v1/oauth-apps.get	| | |
| /api/v1/oauth-apps.list | | |
| | | |
| **Permissions** | | |
| /api/v1/permissions.listAll | 🟠 | |
| /api/v1/permissions.update  | | |
| | | |
| **Roles** | | |
| /api/v1/roles.create         | | |
| /api/v1/roles.list	       | | |
| /api/v1/roles.addUserToRole  | | |
| /api/v1/roles.getUsersInRole | | |
| | | |
| **Push Token** | | |
| /api/v1/push.token [POST]   | ✅ | |
| /api/v1/push.token [DELETE] | ✅ | |
| | | |
| **Rooms** | | |
| /api/v1/rooms.adminRooms       | ✅ | |
| /api/v1/rooms.cleanHistory     | 🟠 | |
| /api/v1/rooms.createDiscussion | ✅ | |
| /api/v1/rooms.favorite         | ✅ | |
| /api/v1/rooms.get              | ✅ | |
| /api/v1/rooms.getDiscussions	 | 🟠 | |
| /api/v1/rooms.info             | ✅ | |
| /api/v1/rooms.leave            | ✅ | |
| /api/v1/rooms.saveNotification | 🟠 | |
| /api/v1/rooms.upload/:rid      | 🟠 | |
| | | |
| **Command Methods** | | |
| /api/v1/commands.get  | 🟠 | |
| /api/v1/commands.list | 🟠 | |
| /api/v1/commands.run	| | |
| | | |
| **Custom User Status** | | |
| /api/v1/custom-user-status.list | Low priority | |
| | | |
| **Emoji Custom** | | |
| /api/v1/emoji-custom.list   | Low Priority ⬇️ | |
| /api/v1/emoji-custom.create | Low Priority ⬇️ | |
| /api/v1/emoji-custom.delete | Low Priority ⬇️ | |
| /api/v1/emoji-custom.update	| Low Priority ⬇️ | |
| | | |
| **Settings** | | |
| /api/v1/settings               | | |
| /api/v1/settings.public	       | | |
| /api/v1/settings.oauth         | | |
| /api/v1/service.configurations | | |
| /api/v1/settings/:_id	         | | |
| /api/v1/settings/:_id	         | | |
| | | |
| **Subscriptions** | | |
| /api/v1/subscriptions.get    | P2 | |
| /api/v1/subscriptions.getOne | P2 | |
| /api/v1/subscriptions.read   | P2 | |
| /api/v1/subscriptions.unread | P2 | |
| | | |
| **Video Conference** | | |
| /api/v1/video-conference/jitsi.update-timeout | Low Priority ⬇️ | |
| | | |
| **Webdav** | | |
| /api/v1/webdav.getMyAccounts | Low Priority ⬇️ | |