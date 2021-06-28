running
fillWithMessages

	self subject addAtBottom: ((TCTMMocks mockMessageWith: self core) message: 'First message').
	self subject addAtBottom: ((TCTMMocks mockMessageWith: self core) message: 'Second message').
	self subject addAtBottom: ((TCTMMocks mockMessageWith: self core) message: 'Third message').