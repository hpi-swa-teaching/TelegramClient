as yet unclassified
receive: timeout
	receivingMsgQueue size > 0 ifTrue: [ ^ receivingMsgQueue removeFirst].
	^ nil