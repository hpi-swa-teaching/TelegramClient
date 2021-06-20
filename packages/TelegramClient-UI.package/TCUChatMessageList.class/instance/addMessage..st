messages
addMessage: aMessage

	| newMessage |
	newMessage := TCUMessage newFromTCCMessage: aMessage.
	self content addMorphBack: newMessage.
	self messages add: newMessage.