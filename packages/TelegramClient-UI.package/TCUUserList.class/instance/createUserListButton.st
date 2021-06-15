initialization
createUserListButton

	^ TCUButton new
		text: 'more...';
		on: #mouseDown send: #loadMoreMembers to: self chat;
		name: 'userLoadButton';
		yourself