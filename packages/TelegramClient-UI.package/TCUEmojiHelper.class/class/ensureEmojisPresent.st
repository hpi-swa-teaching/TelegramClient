downloading
ensureEmojisPresent

	self areEmojisPresent ifFalse: [
		'Downloading Emojis'
			displayProgressAt: Display center
			from: 0
			to: 2
			during: [: bar |
					self downloadArchive.
					bar value: 1.
					self removeOptionalCharacters.
					bar value: 2.
				]
	].