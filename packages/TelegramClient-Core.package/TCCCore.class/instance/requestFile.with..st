events
requestFile: aFileId with: aCallbackID

	"documented here:"
	"https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1download_file.html"
	
	self send: (TCCRequest
		newWithType: 'downloadFile'
		from: {
			'file_id'->aFileId.
			'priority'->32.
			'offset'->0.
			'limit'->0.
			'synchronous' -> true.
			'@extra'->aCallbackID
		})