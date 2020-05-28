initialization
initializeClient

	| specificClient |
	specificClient := TCCTeleClientFactory createClient.
	
	self client: (TCCTeleClient newWithClient: specificClient).