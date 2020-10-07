events
authSucceeded

	self getOwnProfile.
	self chatsHandler getChats.
	^ #authReady