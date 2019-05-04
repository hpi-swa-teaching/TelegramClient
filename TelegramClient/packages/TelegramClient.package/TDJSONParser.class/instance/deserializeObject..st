accessing
deserializeObject: jobj
	| index type |
	(self isSerializedObject: jobj) ifFalse: [ ^jobj ].
	
	type := 'TD_', (jobj at: '@type').
	index := Smalltalk globals declarations do: [:c | 
		(c key asString = type) ifTrue: [
			| obj |
			obj := c value new.
			 jobj keysAndValuesDo: [:k :v | 
				(k = '@type') ifFalse: [
				obj instVarNamed: k put: (self deserializeObject: v).
				].
			].
			^obj.
			].
		].
	^jobj.