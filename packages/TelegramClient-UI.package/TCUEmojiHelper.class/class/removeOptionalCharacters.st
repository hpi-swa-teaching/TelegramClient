downloading
removeOptionalCharacters

	"remove characters not sent by every client from all filenames"
	| filenames |
	filenames := self defaultDirectory fileNames.

	filenames do: [ :filename |
			| newFileName splitCollection |
			splitCollection := self removeOptionalCharactersFrom: (self splitFileName: filename).
			newFileName := (self fileNameFor: splitCollection) , self defaultEmojiFileExtension.
			(self defaultDirectory fileExists: newFileName) ifFalse: [
					self defaultDirectory copyFileNamed: filename toFileNamed: newFileName.
					self defaultDirectory deleteFileNamed: filename.
				].
			].
