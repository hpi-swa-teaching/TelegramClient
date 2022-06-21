chat event
mockChatEventNoPhoto
	"@linter-ignore"

 	^ (JsonObject newFrom: {
 			'@type' -> 'chat'.
 			'chat' -> (JsonObject newFrom: {
 				'id' -> self mockBasicGroupChat id.
 				'title' -> 'MockChat'.
 				'type' -> (JsonObject newFrom: {
 					'@type' -> 'chatTypeBasicGroup'.
 					'basic_group_id' -> self mockBasicGroupChat id.
 				}).
 				'notification_settings' -> (JsonObject newFrom: {
 					'mute_for' -> 0
 				}).
 				'permissions' -> (JsonObject newFrom: {
 					'@type' -> 'chatPermissions'.
					'can_send_messages' -> true.
 				}).
 			})
 		})