accessing
deserializeObject: t1 
	| t2 t3 t4 |
	(self isSerializedObject: t1)
		ifFalse: [^ t1].
	t3 := 'TD_'
				, (t1 at: '@type').
	t2 := Smalltalk globals declarations
				do: [:t5 | | t6 | t5 key asString = t3
						ifTrue: [t6 := t5 value new.
							t1
								keysAndValuesDo: [:t7 :t8 | t7 = '@type'
										ifFalse: [t6
												instVarNamed: t7
												put: (self deserializeObject: t8)]].
							^ t6]].
	t4 := t1 at: '@type' asString.
	Debug warn: '[NOT IMPLEMENTED]' , t4.
	^ nil