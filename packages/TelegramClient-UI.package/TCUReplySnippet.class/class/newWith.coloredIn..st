instance creation
newWith: aReplyText coloredIn: aMessageColor

	^ self basicNew
		replyText: aReplyText;
		messageColor: aMessageColor;
		initialize;
		yourself