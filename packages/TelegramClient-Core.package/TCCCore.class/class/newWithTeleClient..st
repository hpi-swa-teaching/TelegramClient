instance creation
newWithTeleClient: aTeleClient

	^ self basicNew
		client: aTeleClient;
		initialize;
		yourself