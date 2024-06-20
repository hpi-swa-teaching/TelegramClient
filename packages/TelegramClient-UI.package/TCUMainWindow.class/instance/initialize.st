initialization
initialize

	super initialize.
	self
		extent: self class defaultExtent;
		borderWidth: 0;
		addHeader;
		chatWindow: TCUChatWindow new;
		addChatsList;
		initializeStickerStore;
		initializeChatWindow;
		subscribeChatsList;
		clipSubmorphs: true.
	(TCUEmojiHelper areEmojisPresent) ifFalse: [TCUEmojiHelper promptDownload].