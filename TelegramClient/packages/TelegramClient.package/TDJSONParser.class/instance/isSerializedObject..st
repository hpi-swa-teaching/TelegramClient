accessing
isSerializedObject: jobj
	jobj at: '@type' ifAbsent: [^false].
	^true.