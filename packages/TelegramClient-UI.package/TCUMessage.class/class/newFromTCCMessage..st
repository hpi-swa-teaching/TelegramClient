instance creation
newFromTCCMessage: aMessage

	^ self basicNew
		text: aMessage message;
		senderID: aMessage senderID;
		isOutgoing: aMessage isOutgoing;
		initialize