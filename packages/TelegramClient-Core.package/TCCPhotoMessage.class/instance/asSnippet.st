accessing
asSnippet

	self hasCaption ifTrue: [
		^ 'Photo: ', self caption
	] ifFalse: [
		^ 'Photo'
	]