accessing
isSerializedObject: t1 
	t1 class = JsonObject
		ifFalse: [^ false].
	t1
		at: '@type'
		ifAbsent: [^ false].
	^ true