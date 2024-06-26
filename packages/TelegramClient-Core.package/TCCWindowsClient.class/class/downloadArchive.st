helper
downloadArchive

	| intermediatePath archive response |
	intermediatePath := FileDirectory default / 'archive.zip'.
	intermediatePath exists ifTrue: [intermediatePath delete].
	FileStream fileNamed: intermediatePath fullName do: [:stream |
		response := WebClient httpGet: self downloadUrl.
		stream
			binary;
			nextPutAll: response content.
		intermediatePath := FileDirectory default / 'archive.zip'.].
	archive := ZipArchive new readFrom: intermediatePath fullName.
	archive extractAllTo: FileDirectory default.
	archive close.
	intermediatePath delete.