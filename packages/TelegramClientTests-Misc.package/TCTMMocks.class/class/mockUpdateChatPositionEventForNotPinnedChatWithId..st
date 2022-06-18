chat event
mockUpdateChatPositionEventForNotPinnedChatWithId: aNumber 
	"@linter-ignore"

 	^ (JsonObject newFrom: {
 			'chat_id' -> aNumber.
			'position' -> (JsonObject newFrom: {
 				'@type' -> 'chatPosition'.
				'is_pinned' -> false.
				'order' -> '314159'.
 			}).
		})