initialization
initialize

	"override initialize to work without client or tdlib"
	self
		client: nil;
		initializeHandlers;
		chats: TCCChats newWithDefaultSorting;
		loggedInUserID: 0; 
		pendingRequests: Dictionary new;
		users: (TCCUsers new core: self).