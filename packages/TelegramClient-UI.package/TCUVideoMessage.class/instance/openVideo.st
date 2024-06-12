constructing
openVideo

	self messageModel core
		send: (TCCRequest newRequestFile: self messageModel videoId)
		thenDo: [:videoEvent | OSProcess command: 'cmd.exe /c ""', ((videoEvent at: 'local') at: 'path'), '""'].
