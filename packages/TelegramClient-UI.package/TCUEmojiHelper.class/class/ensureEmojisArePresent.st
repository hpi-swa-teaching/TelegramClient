downloading
ensureEmojisArePresent

		| file |
	file := TCTCCoreResource file.
	'Ensuring EmojisBegin' printOn: file.
	file flush.
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
		file := TCTCCoreResource file.
	'Ensuring Emojis End' printOn: file.
	file flush.