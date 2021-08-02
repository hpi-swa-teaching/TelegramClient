downloading
promptDownload

	Transcript showln: 'Begin emoji prompting'.
	UIManager default inform: 'Emojis are not present in this image. They will be downloaded now.'.
	self ensureEmojisArePresent.
	Transcript showln: 'End emoji prompting'.