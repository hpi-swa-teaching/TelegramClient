default values
assureEmojis

	self areEmojisPresent ifFalse: [
		self 
			downloadArchive;
			removeOptionalCharacters
	].