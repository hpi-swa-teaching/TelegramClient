testing
testNotificationContainsMessage

	| contents |
	
	self wantsToTest: (TCUNotification newWithMessage: TCTMocks mockMessage).
	contents := self subject findByClass: TextMorph.
	self assert: (contents morphs anySatisfy: [:textMorph | textMorph contents asString = TCTMocks mockMessageText]).