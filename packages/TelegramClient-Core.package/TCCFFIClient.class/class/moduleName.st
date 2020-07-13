accessing
moduleName

	| filePath response |

	filePath := FileDirectory default / self fileName.

	filePath exists ifFalse: [
		FileStream fileNamed: filePath fullName do: [:stream |
			response := WebClient httpGet: self downloadUrl.
			stream
				binary;
				nextPutAll: response content]].
		
	^ filePath fullName