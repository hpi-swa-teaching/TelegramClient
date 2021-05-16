testing
testGroupChat

	|chat message sender notification|
	chat := TCCChat new type: 'chatTypeBasicGroup'; title: 'chat'.
	sender := TCCUser new.
	message := TCCMessage new sender: sender; chat: chat.
	notification := TCUNotification newWithMessage: message.  
	
	self assert: ('chat' = (notification chatTitle))