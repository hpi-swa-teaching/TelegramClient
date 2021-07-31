utility
requestImageFor: anImageId with: aPromise

	"documented here:"
	"https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1download_file.html"

	| callbackId |
	callbackId := self core
		registerCallback:
			[:imageEvent | aPromise resolveWith: (self class extractPathFrom: imageEvent)].

	self core send: (TCCRequest newRequestFile: anImageId with: callbackId).