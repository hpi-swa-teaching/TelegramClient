initialization
logInCompleted

	"self delete."
	self core getChats.
	(TCUMain newWithCore: self core) openCenteredInWorld.
	