downloading
assureEmojis

	self areEmojisPresent ifFalse: [
		self
			filenames: OrderedCollection new;
			downloadArchive;
			removeOptionalCharacters;
			addCanary;
			loadFileNames.
	].