as yet unclassified
downloadArchive

	| intermediatePath archive response |
	intermediatePath := FileDirectory default / (self directoryName, '.zip').
	intermediatePath exists ifTrue: [intermediatePath delete].
	FileStream fileNamed: intermediatePath fullName do: [:stream |
		response := WebClient httpGet: self downloadUrl.
		stream
			binary;
			nextPutAll: response content.].
	intermediatePath := FileDirectory default / (self directoryName, '.zip').
	archive := ZipArchive new readFrom: intermediatePath fullName.
	archive extractAllTo: self libraryDirectory.
	archive close.
	intermediatePath delete.