testing
testPrivateChat

	|chat message sender notification|
	chat := TCCChat new type: 'chatTypePrivate'; title: 'chat'.
	sender := TCCUser new.
	message := TCCMessage new sender: sender; chat: chat; message: 'Test'.
	notification := TCUNotification newWithMessage: message.
	
	self assert: ('' = (notification chatTitle ))