accessing
moduleName

	| filePath |

	filePath := self libraryFilePath.

	filePath exists ifFalse: [
		FileStream fileNamed: filePath fullName do: [:stream | 
			| response |
			response := WebClient httpGet: self downloadUrl.
			stream
				binary;
				nextPutAll: response content]].
	^ filePath fullName