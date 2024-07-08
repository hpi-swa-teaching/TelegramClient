accessing
libraryFile

	^ (FileDirectory default / (self fileName, '-', self versionName , '.', self fileEnding))