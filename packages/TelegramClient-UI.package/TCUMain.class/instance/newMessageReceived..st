event handling
newMessageReceived: aMessage
	|chat|
	chat :=  (self chatsList getChat: aMessage chatID). 
	aMessage isOutgoing ifFalse: [
		[TCUNotification newWithMessage: aMessage in: (chat title)] fork].