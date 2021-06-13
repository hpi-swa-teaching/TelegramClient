testing
partialTestChatList

	| chatInfoPage |
	self openInfoPageInChatWindow.

	chatInfoPage := (self subject findByClass: TCUChatInfoPage) morphs anyOne.
	
	chatInfoPage chat members do: [:aMember|
		self assertReading: aMember value fullName in: (self subject findByClass: TCUUserList).
	].