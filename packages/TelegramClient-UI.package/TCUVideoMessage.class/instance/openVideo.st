constructing
openVideo

	self messageModel core
		send: (TCCRequest newRequestFile: self messageModel videoId)
		thenDo: [:videoEvent | Smalltalk platformName caseOf: {
			['Win32'] -> [OSProcess command: 'cmd.exe /c ""', ((videoEvent at: 'local') at: 'path'), '""'].
			['MacOS'] -> [UIManager inform: 'Go buy something else.'].
			['unix'] -> [OSProcess command: 'open "', ((videoEvent at: 'local') at: 'path'), '"']}
			].
