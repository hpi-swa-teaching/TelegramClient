as yet unclassified
initialize

	self responseQueue: LinkedList new.
	responseQueue add: self class authorizationStateReadyEvent.