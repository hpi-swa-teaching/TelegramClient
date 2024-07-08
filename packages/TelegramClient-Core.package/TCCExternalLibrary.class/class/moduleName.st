accessing
moduleName

	^ (FileDirectory default / (self fileName, '-', self versionName , '.', self fileEnding)) fullName