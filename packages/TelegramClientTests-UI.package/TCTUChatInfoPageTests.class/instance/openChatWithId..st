as yet unclassified
openChatWithId: anID

	(self subject findByCriteria: [ :morph | (morph respondsTo: #chatID) and: [morph chatID = anID]]) click.