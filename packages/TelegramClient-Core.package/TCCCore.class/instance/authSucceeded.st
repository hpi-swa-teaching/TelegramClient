initialization
authSucceeded

	self getOwnProfile.
	self chatsHandler getChats.
	^ #authReady