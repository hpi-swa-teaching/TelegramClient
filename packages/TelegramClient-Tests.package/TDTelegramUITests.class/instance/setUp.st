as yet unclassified
setUp
	TDDebug clear.
	telegram := TDTelegram createTelegram: (TDJSONClientMock new).
	uiModel := TDTelegramUI newWithBackend: telegram.
	ToolBuilder open: uiModel
	