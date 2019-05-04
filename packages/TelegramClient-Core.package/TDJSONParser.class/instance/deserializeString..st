accessing
deserializeString: string
	| jobj |
	jobj := jsonparser readFrom: (ReadStream on: string).
	^ self deserializeObject: jobj.