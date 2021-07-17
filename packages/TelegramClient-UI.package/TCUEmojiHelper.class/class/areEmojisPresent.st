downloading
areEmojisPresent

	^ self defaultDirectory exists
		and: [self defaultDirectory hasFiles]
		and: [self defaultDirectory fileNames size >= self defaultMinimumEmojiAmount]