as yet unclassified
addMessege: aString

	self chat addLast: aString .
	self changed: #chat .