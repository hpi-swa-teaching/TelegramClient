testing
testSwitchingChatsDoesNotCarryOverMessages

	| anID |
	
	"todo: click on first chat and instantly click on second, assert that message from first chat is not there"
	"for that we would need at least 2 chats with an actual chat history in the mock core"
	
	(self subject findByCriteria: [ :morph | (morph respondsTo: #chatID) and: [morph chatID = anID]]) click.

