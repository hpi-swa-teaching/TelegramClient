as yet unclassified
setUp
	TD_Debug clear.
	telegram := TD_Telegram createTelegram: (TD_JSONClientMock new).
	uiModel := TD_TelegramUI newWithBackend: telegram.
	ToolBuilder open: uiModel
	