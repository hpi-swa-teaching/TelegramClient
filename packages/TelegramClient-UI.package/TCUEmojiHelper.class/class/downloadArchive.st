utility
downloadArchive

	| intermediatePath archive response |
	intermediatePath := FileDirectory default / 'emoji.zip'.
	FileStream fileNamed: intermediatePath fullName do: [:stream |
		response := WebClient httpGet: self downloadUrl.
		stream
			binary;
			nextPutAll: response content.
		intermediatePath := FileDirectory default / 'emoji.zip'].
	archive := ZipArchive new readFrom: intermediatePath fullName.
	archive extractAllTo: self defaultDirectory.
	archive close.
	intermediatePath delete.