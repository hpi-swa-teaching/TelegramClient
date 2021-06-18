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
 					'@type' -> 'can_send_messages'
 				}).
 				'notification_settings' -> (JsonObject newFrom: {
 					'mute_for' -> aNumber
 				}).
 			})
 		})