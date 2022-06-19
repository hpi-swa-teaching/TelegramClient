chat event
mockUpdateChatPositionEventForPinnedChatWithId: aNumber 
	"@linter-ignore"

 	^ (JsonObject newFrom: {
 			'chat_id' -> aNumber.
			'position' -> (JsonObject newFrom: {
 				'@type' -> 'chatPosition'.
				'is_pinned' -> true.
				'order' -> '314159'.
 			}).
		})