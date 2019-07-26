as yet unclassified
testTelegramWithTimeout: timeout assertion: aBlock
	| iterations |
	iterations := timeout / 0.05.
	
	1 to: iterations do: [ :i | 
		telegram update.
		aBlock value ifTrue: [^ true]].
	^ false