downloading
removeOptionalCharacters

	| filenames |
	filenames := self defaultDirectory fileNames.

	filenames do: [
		:filename |
			| newFileName explodedCollection |
			explodedCollection := self removeOptionalCharactersFrom: (self explodeFileName: filename).
			newFileName := (self joinRun: explodedCollection) , self defaultFileExtension.
			(self defaultDirectory fileExists: newFileName) ifFalse: [
				self defaultDirectory copyFileNamed: filename toFileNamed: newFileName.
			].
		].