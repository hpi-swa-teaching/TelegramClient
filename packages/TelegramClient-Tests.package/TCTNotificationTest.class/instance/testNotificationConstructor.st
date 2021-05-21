testing
testNotificationConstructor

	|chat message sender notification|
	chat := TCCChat new type: 'chatTypePrivate'; title: 'chat'.
	sender := TCCUser new firstName: 'Test'; lastName: 'User'.
	message := TCCMessage new sender: sender; chat: chat; message: 'm'.
	notification := TCUNotification newWithMessage: message.
	
	self assert: sender equals: (notification sender).
	self assert: chat equals: (notification chat).
	self assert: message equals: (notification message)