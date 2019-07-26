as yet unclassified
setUp
	Debug clear.
	telegram := Telegram createTelegram: (TDJSONClientMock new).
	uiModel := TelegramUI newWithBackend: telegram.
	