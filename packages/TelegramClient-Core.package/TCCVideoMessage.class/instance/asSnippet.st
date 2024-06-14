accessing
asSnippet

	self hasCaption ifTrue: [
		^ 'Video: ', self caption
	] ifFalse: [
		^ 'Video'
	]