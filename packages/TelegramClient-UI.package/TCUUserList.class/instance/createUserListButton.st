initialization
createUserListButton

	^ TCUButton new
		text: 'show more...';
		on: #mouseDown send: #loadMoreMembers to: self chat;
		name: 'userLoadButton';
		yourself