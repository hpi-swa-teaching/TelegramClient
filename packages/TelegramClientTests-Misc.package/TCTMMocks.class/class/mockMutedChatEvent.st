chat event
mockMutedChatEvent

 	^ (JsonObject newFrom: {
 			'@type' -> 'chat'.
 			'chat' -> (JsonObject newFrom: {
 				'id' -> self mockBasicGroupChat id.
 				'title' -> 'MutedMockChat'.
 				'type' -> (JsonObject newFrom: {
 					'@type' -> 'chatTypeBasicGroup'.
 					'basic_group_id' -> self mockBasicGroupChat groupId
 				}).
 				'permissions' -> (JsonObject newFrom: {
 					'@type' -> 'can_send_messages'
 				}).
 				'notification_settings' -> (JsonObject newFrom: {
 					'mute_for' -> 42
 				}).
 			})
 		})