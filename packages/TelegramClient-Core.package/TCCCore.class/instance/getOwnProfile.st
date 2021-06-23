events
getOwnProfile

	"todo: fix this"
	"also todo: finish creating constructors"
	self pendingRequests at: 'getMe' put: [:aUserEvent | self setUserID: aUserEvent].
	self send: TCCRequest newGetOwnProfile.