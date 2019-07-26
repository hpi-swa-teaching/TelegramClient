as yet unclassified
answerSend: msg
	msg class = TD_getChats ifTrue: [  |ids|
		ids := Array new: self class chatCount.
		1 to: self class chatCount do: [:i | ids at: i put: i].
		^ receivingMsgQueue addLast: ((TD_chats new) chat_ids: ids)].
	
	msg class = TD_getChat ifTrue: [ 
	 (msg chat_id >= 1
	 and: msg chat_id <= self class chatCount) ifTrue: [ |chat|
		chat := (TD_chat new) 
			title: 'TestChat', msg chat_id asString;
			id: msg chat_id;
			order: msg chat_id. 
		receivingMsgQueue addLast: chat].
	^ nil]