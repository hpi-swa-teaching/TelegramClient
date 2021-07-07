testing
testSwitchingChatsDoesNotCarryOverMessages

	
	"todo: click on first chat and instantly click on second, assert that message from first chat is not there"
	"for that we would need at least 2 chats with an actual chat history in the mock core"
	
	self core handleEvent: (TCTMMocks mockChatHistoryIn: self core chats third id with: 'Chat 2').

	"self subject morphs first openInWorld."
	"click on all TCUChatListItems with a given chatID"
	(self subject findByCriteria: [ :morph | (morph respondsTo: #chatID) and: [morph chatID = self core chats first id]]) click.
	self core handleEvent: (TCTMMocks mockChatHistoryIn: self core chats first id with: 'Chat 1').
	(self subject findByCriteria: [ :morph | (morph respondsTo: #chatID) and: [morph chatID = self core chats third id]]) click.
	
	self assertNotReading: 'Chat 2' in: self subject.




