accessing
deserializeString: t1 
	| t2 |
	t2 := jsonparser
				readFrom: (ReadStream on: t1).
	^ self deserializeObject: t2