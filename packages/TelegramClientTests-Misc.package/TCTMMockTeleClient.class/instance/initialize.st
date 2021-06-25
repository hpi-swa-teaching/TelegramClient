initialize-release
initialize

	self responseQueue: LinkedList new.
	self requestResponses: Dictionary new.
	self freed: false.