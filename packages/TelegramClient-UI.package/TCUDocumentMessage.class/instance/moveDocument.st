constructing
moveDocument

	| sourceFile destinationFile sourceStream destinationStream |

	sourceFile := self messageModel core documentStore getDocumentFor: self messageModel documentId.
	destinationFile := (DirectoryChooserDialog openOn:FileDirectory default label: 'Select Directory for download') / self messageModel filename.

    	sourceStream := StandardFileStream readOnlyFileNamed: sourceFile.
    	destinationStream := StandardFileStream newFileNamed: destinationFile pathName.
    	destinationStream binary.
	[sourceStream atEnd] whileFalse: [
		destinationStream nextPutAll: (sourceStream next: 1024).
	].
	sourceStream close.
	destinationStream close.