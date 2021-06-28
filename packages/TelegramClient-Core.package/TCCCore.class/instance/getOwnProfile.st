events
getOwnProfile

	| callbackId |
	
	callbackId := self registerCallback: [:aUserEvent | self setUserID: aUserEvent].
	self send: (TCCRequest newGetMeWith: callbackId).