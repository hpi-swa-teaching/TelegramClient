messages
wrapperFor: aMessage
	
	| wrapper |
	wrapper := self class defaultMessageWrapper
		width: self scroller width;
		height: aMessage height;
		yourself.
	
	aMessage isOutgoing
		ifTrue: [ wrapper listDirection: #rightToLeft ]
		ifFalse: [ wrapper listDirection: #leftToRight ].
	
	wrapper addMorph: aMessage.
	^ wrapper