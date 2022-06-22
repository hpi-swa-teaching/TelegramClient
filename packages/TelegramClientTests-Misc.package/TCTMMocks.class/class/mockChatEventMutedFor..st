chat event
mockChatEventMutedFor: aNumber

 	^ (JsonObject newFrom: {
 			'@type' -> 'chat'.
 			'chat' -> (JsonObject newFrom: {
 				'id' -> self mockBasicGroupChat id.
 				'title' -> 'MutedMockChat'.
 				'type' -> (JsonObject newFrom: {
 					'@type' -> 'chatTypeBasicGroup'.
 					'basic_group_id' -> self mockBasicGroupChat id.
 				}).
 				'permissions' -> (JsonObject newFrom: {
 					'@type' -> 'chatPermissions'.
					'can_send_messages' -> true.
 				}).
 				'notification_settings' -> (JsonObject newFrom: {
 					'mute_for' -> aNumber
 				}).
 			})
 		})