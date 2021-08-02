downloading
ensureEmojisArePresent

	Transcript showln: 'Begin emoji Ensuring'.
	self areEmojisPresent ifFalse: [
		'Downloading Emojis'
			displayProgressAt: Display center
			from: 0
			to: 3
			during: [ :bar |
					self downloadArchive.
					bar value: 1.
					self removeOptionalCharacters.
					bar value: 2.
					self loadFileNames.
					bar value: 3.
				]
		].
	Transcript showln: 'End emoji ensuring'.