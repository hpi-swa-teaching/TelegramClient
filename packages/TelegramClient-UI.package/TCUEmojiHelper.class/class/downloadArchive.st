downloading
downloadArchive

	| intermediatePath response |
	intermediatePath := FileDirectory default / 'emoji.zip'.
	FileStream fileNamed: intermediatePath fullName do: [:stream |
		response := WebClient httpGet: self downloadUrl.
		stream
			binary;
			nextPutAll: response content].
	self defaultDirectory assureExistence.
	(ZipArchive new readFrom: intermediatePath fullName)
		extractAllTo: self defaultDirectory;
		close.
	intermediatePath delete.