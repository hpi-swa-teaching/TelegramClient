testing
partialTestChatList
	"TODO: method should be renamed. It is a test and contains assertions but is not executed on its own. Instead it is called by other tests."
	| chatInfoPage |
	self openInfoPageInChatWindow.

	chatInfoPage := (self subject findByClass: TCUChatInfoPage) morphs anyOne.
	
	chatInfoPage chat members do: [:aMember|
		self assertReading: aMember fullName in: (self wrap:(chatInfoPage userList)). 
	].