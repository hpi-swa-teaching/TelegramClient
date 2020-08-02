creation
newWithClient: aClient

	^ self new
		specificClient: aClient;
		handle: aClient create