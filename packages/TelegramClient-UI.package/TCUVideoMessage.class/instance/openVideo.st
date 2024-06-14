constructing
openVideo

	| path |
	path := self messageModel core videoStore getVideoFor: self messageModel videoId.
	Smalltalk platformName caseOf: {
		['Win32'] -> [OSProcess command: 'cmd.exe /c ""', path, '""'].
		['MacOS'] -> [UIManager inform: 'Mac is not supported for videoplaying yet.'].
		['unix'] -> [OSProcess command: 'open "', path, '"']}.
