downloading
ensureEmojisPresent

	self areEmojisPresent ifFalse: [
		self
			downloadArchive;
			removeOptionalCharacters.
	].