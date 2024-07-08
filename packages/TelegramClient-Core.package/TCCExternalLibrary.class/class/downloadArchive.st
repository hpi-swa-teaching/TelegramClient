as yet unclassified
downloadArchive

	| intermediatePath archive response |
	intermediatePath := FileDirectory default / (self fileName, '.zip').
	intermediatePath exists ifTrue: [intermediatePath delete].
	FileStream fileNamed: intermediatePath fullName do: [:stream |
		response := WebClient httpGet: self downloadUrl.
		stream
			binary;
			nextPutAll: response content.].
	intermediatePath := FileDirectory default / (self fileName, '.zip').
	archive := ZipArchive new readFrom: intermediatePath fullName.
	archive extractAllTo: FileDirectory default informing: nil overwrite: true.
	archive close.
	intermediatePath delete.