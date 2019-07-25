lib-calls
destroy
	destroyed := true.
	Debug log: 'Closing Telegram Lib'.
	^self class destroy: client