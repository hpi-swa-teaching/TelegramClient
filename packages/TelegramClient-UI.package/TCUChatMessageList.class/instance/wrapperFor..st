messages
wrapperFor: aTCUMessage
	
	| wrapper |
	wrapper := self messageWrapper
		height: aTCUMessage height;
		yourself.
	
	aTCUMessage isOutgoing 
		ifTrue: [ wrapper listDirection: #rightToLeft ]
		ifFalse: [ wrapper listDirection: #leftToRight ].
	
	wrapper addMorph: aTCUMessage. 
	^ wrapper
	