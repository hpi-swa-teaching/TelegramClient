instance creation
createTelegram: client
	^ (self basicNew) client: client; initialize.