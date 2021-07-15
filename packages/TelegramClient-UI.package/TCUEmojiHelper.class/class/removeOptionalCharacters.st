downloading
removeOptionalCharacters

	| filenames |
	filenames := self defaultDirectory fileNames.

	filenames do: [ :filename |
			| newFileName splitCollection |
			splitCollection := self removeOptionalCharactersFrom: (self splitFileName: filename).
			newFileName := (self joinRun: splitCollection) , self defaultFileExtension.
			(self defaultDirectory fileExists: newFileName) ifFalse: [
					self defaultDirectory copyFileNamed: filename toFileNamed: newFileName.
				].
			].