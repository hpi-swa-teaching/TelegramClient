testing
testDoesDisplayGroupDescription

	| titleBar groupChat |
	self wantsToTest: (TCUMain newWithCore: self core).
	
	self waitUntil: [self core chats anySatisfy: [:c | c isGroup]].
	groupChat := (self core chats detect: [:chat | chat isGroup]).
	
	(self subject findByCriteria: [ :morph | (morph respondsTo: #chatID) and: [morph chatID = groupChat id]]) click.
	titleBar := (self subject findByClass: TCUChatWindow) morphs collect: [:chatWindow | chatWindow titleBar].
	(self subject createWrapperFor: titleBar) click.
	
	self assertReading: groupChat description in: (self subject findByClass: TCUChatInfoPage).