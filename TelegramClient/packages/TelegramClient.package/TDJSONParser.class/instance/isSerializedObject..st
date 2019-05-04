accessing
isSerializedObject: jobj
	jobj class = JsonObject ifFalse: [^false].
	jobj at: '@type' ifAbsent: [^false].
	^true.