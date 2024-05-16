utility
requestStickerFor: aStickerId with: aPromise

	"documented here:"
	"https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1download_file.html"

	self core
		send: (TCCRequest newRequestFile: aStickerId)
		thenDo: [:stickerEvent | aPromise resolveWith: (self class extractPathFrom: stickerEvent)].