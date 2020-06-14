accessing
moduleName

	| filePath response |

	filePath := self folderForModule / self fileName.

	filePath exists ifFalse: [
		FileStream fileNamed: filePath fullName do: [:stream |
			response := WebClient httpGet: self downLoadUrl.
			stream binary; nextPutAll: response content]].

	^ filePath fullName