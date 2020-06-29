accessing
moduleName

	| filePath response |

	(Smalltalk classNames: 'ExternalLibrary') ifFalse: [self installFFI].

	filePath := FileDirectory default / self fileName.

	filePath exists ifFalse: [
		FileStream fileNamed: filePath fullName do: [:stream |
			response := WebClient httpGet: self downloadUrl.
			stream
				binary;
				nextPutAll: response content]].

	^ filePath fullName