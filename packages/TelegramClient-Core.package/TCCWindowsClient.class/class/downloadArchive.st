helper
downloadArchive

	| intermediatePath archive response |
	intermediatePath := FileDirectory default / 'archive.zip'.
	FileStream fileNamed: intermediatePath fullName do: [:stream |
		response := WebClient httpGet: self downloadUrl.
		stream
			binary;
			nextPutAll: response content].
	archive := ZipArchive new readFrom: (intermediatePath fullName).
	archive extractAllTo: FileDirectory default.
	archive close.
	intermediatePath delete.