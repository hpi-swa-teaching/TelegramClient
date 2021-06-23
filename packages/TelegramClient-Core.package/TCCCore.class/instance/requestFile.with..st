events
requestFile: aFileId with: aCallbackId

	"documented here:"
	"https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1download_file.html"
	
	self send: (TCCRequest newRequestFile: aFileId with: aCallbackId)