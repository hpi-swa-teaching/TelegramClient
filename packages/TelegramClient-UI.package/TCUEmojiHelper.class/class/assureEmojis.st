downloading
assureEmojis

	self areEmojisPresent ifFalse: [
		self
			downloadArchive;
			removeOptionalCharacters;
			addCanary;
			loadFileNames.
	].