events
requestFile: aNumber with: aString

	"documented here:"
	"https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1download_file.html"
	
	self send: (TCCRequest newRequestFile: aNumber with: aString)