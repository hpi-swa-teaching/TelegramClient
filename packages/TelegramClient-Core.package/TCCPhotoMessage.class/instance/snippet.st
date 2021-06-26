accessing
snippet

	self hasCaption ifTrue: [
		^ 'Photo: ', caption
	] ifFalse: [
		^ 'Photo'
	]
	