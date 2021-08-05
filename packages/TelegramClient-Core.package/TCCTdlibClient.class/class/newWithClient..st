instance creation
newWithClient: anFfiClient

	anFfiClient setLogLevel: self defaultLogLevel.
	^ self new
		specificClient: anFfiClient;
		handle: anFfiClient create