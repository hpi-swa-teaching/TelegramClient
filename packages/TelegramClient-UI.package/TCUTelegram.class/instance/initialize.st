initialization
initialize

	super initialize.
	TCCFFIClient downloadArchiveIfNotExists.
	TCCLibWebP downloadArchiveIfNotExists.
	self
		openCenteredInWorld;
		setLabel: 'TelegramClient';
		color: Color white;
		addAuthenticationWindow.