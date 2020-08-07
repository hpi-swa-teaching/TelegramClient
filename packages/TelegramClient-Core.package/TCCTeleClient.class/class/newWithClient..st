instance creation
newWithClient: aClient

	aClient setLogLevel: self defaultLogLevel.
	^ self new
		specificClient: aClient;
		handle: aClient create