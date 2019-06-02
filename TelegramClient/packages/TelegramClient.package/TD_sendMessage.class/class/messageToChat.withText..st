as yet unclassified
messageToChat: t1 withText: t2 
	^ self basicNew chat_id: t1;
		
		input_message_content: (TD_inputMessageText text: t2)