testing
fillWithMessages

	self subject addBottom: (TCTMMocks mockMessage message: 'First message').
	self subject addBottom: (TCTMMocks mockMessage message: 'Second message').
	self subject addBottom: (TCTMMocks mockMessage message: 'Third message').