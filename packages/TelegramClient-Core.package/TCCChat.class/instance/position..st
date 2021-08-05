accessing
position: aStringOrNumber

	aStringOrNumber 
		ifNil: [ position := 0. ]
		ifNotNil: [ position := aStringOrNumber asNumber. ].
