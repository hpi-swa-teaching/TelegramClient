event handling
buttonFileSelectPressed

	| fileEnding fileObject videoEndings photoEndings|
	
	photoEndings := #('jpg' 'jpeg' 'png' 'gif' 'bmp').
	videoEndings := #('mp4' 'webm' 'mov' 'avi').
	
	fileObject := (FileChooser new initializeAsDialogBox open).
	fileObject isNil ifFalse: [
		fileEnding := fileObject fullName.
		(fileObject fullName endsWithAnyOf: photoEndings) ifTrue: [
			self selectedChat sendPhotoMessage: (fileObject fullName)
		] ifFalse: [
			(fileObject fullName endsWithAnyOf: videoEndings) ifTrue: [
				self selectedChat sendVideoMessage: (fileObject fullName).
			] ifFalse: [
				self selectedChat sendDocumentMessage: (fileObject fullName).
			]
		]
		
	].