initialization
initializeClient

	| specificClient |
	specificClient := TCCTeleClientFactory new createClient.

	self client: (TCCTeleClient newWithClient: specificClient).