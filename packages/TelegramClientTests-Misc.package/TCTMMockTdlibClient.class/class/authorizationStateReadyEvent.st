as yet unclassified
authorizationStateReadyEvent

	^ (JsonObject newFrom: {
			'@type' -> 'updateAuthorizationState' .
			'authorization_state' -> (JsonObject newFrom: {
				'@type' -> 'authorizationStateReady'.
				}).
			})