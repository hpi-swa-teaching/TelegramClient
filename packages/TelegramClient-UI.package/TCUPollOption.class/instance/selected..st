as yet unclassified
selected: aBoolean

	selected := aBoolean.
	aBoolean ifTrue: [circleMorph color: Color black.]
		ifFalse: [circleMorph color: pollMessage messageColor.]