downloading
promptDownload

		| file |
	file := TCTCCoreResource file.
	'Prompting Emoji Download begin' printOn: file.
	file flush.
	
	UIManager default inform: 'Emojis are not present in this image. They will be downloaded now.'.
	self ensureEmojisArePresent.
		file := TCTCCoreResource file.
	'Prompting Emoji Download End' printOn: file.
	file flush.