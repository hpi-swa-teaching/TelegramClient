testing
testMessageWrapperHasMessageId

	| message chatMessageList date |
	date := (DateAndTime fromUnixTime: 1376462359) asDate. "14.8.13"
	message := TCTMMocks mockTextMessageWith: self core inChat: TCTMMocks mockBasicGroupChat.
	chatMessageList := TCUChatMessageList new.
	self wantsToTest: (chatMessageList createDayDividerForDate: date).
	self assert: self subject messageId isNumber.
	self wantsToTest: (chatMessageList createMessageItemFrom: message).
	self assert: self subject messageId isNumber.