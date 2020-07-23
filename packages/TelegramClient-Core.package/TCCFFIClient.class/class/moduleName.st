accessing
moduleName

	| filePath response intermediatePath archive |

	filePath := FileDirectory default / self fileName.
	
	filePath exists ifFalse: [
		
		(Smalltalk platformName = 'Win32')
			ifTrue: 	[
						intermediatePath := FileDirectory default / 'platformarchive.zip'.
						FileStream fileNamed: intermediatePath fullName do: [:stream |
							response := WebClient httpGet: self downloadUrl.
							stream
							binary;
							nextPutAll: response content].
						self halt.
							archive := ZipArchive new readFrom: (intermediatePath fullName).
							archive extractAllTo: FileDirectory default.
					] 
			ifFalse: [
		FileStream fileNamed: filePath fullName do: [:stream |
			response := WebClient httpGet: self downloadUrl.
			stream
				binary;
				nextPutAll: response content]].].
		
	^ filePath fullName