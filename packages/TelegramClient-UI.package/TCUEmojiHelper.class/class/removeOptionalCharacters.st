downloading
removeOptionalCharacters

	| filenames |
	filenames := self defaultDirectory fileNames.

	filenames do: [
		:filename | | newFileName | 
			newFileName := self removeOptionalCharactersFrom: filename.
			(filename = newFileName) ifFalse: [
				self defaultDirectory copyFileNamed: filename toFileNamed: newFileName.
			].
		].
	