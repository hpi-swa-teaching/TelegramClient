utility
requestFileFor: aFileId with: aPromise

	"documented here:"
	"https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1download_file.html"

	self core
		send: (TCCRequest newRequestFile: aFileId)
		thenDo: [:fileEvent | aPromise resolveWith: (self class extractPathFrom: fileEvent)].