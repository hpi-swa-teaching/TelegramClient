running
fillWithMessages

	self subject addAtBottom: ((TCTMMocks mockTextMessageWith: self core) text: 'First message').
	self subject addAtBottom: ((TCTMMocks mockTextMessageWith: self core) text: 'Second message').
	self subject addAtBottom: ((TCTMMocks mockTextMessageWith: self core) text: 'Third message').