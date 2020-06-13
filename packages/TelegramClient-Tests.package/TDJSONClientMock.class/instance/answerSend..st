accessing
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
	^ nil].

	msg class = TD_getChatHistory ifTrue: [ | messages  strings|
		(msg chat_id = 1 and: msg from_message_id = 0) ifFalse: [^nil].
		messages := TD_messages new.
		messages total_count: self class messageInChat1Count.
		strings := Array new: self class messageInChat1Count.
		1 to: strings size do:  [:i | |m|
			m := TD_message new.
			m chat_id: 1.
			m id: i.
			m content: ((TD_inputMessageText new) text:  'Test Message: ', i asString).
			m is_outgoing: true.
			strings at: i put: m].
		messages messages: strings.
		receivingMsgQueue addLast: messages.
	]