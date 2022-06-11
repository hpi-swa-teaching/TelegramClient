as yet unclassified
initialize

	super initialize.
	self
		cellInset: self class defaultMessageMargin;
		color: Color transparent;
		layoutPolicy: TableLayout new;
		cellPositioning: #bottomCenter;
		yourself.
		
	self message isOutgoing
		ifTrue: [ self listDirection: #rightToLeft ]
		ifFalse: [ self listDirection: #leftToRight ].
	
	self addMorph: self message.
	self message messageModel chat isGroup ifTrue: [self addProfilePhoto].