message - json
mockMessageJsonFrom: aChatId

	"Use this mock if you don't care about the specific type of a message"
	^ self mockTextMessageJsonFrom: aChatId with: 'messageSenderUser'