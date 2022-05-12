navigating
openChatWithId: anId

	(self subject findByCriteria: [ :morph | (morph respondsTo: #chatId) and: [morph chatId = anId]]) click.