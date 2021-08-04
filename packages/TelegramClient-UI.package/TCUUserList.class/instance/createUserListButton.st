initialization
createUserListButton

	^ TCUButton new
		text: 'more...';
		on: #mouseDown send: #loadMoreUsers to: self;
		name: 'userLoadButton';
		yourself