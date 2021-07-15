accessing
senderName

	self chat isChannel ifTrue: [
		^ self chat title
	] ifFalse: [
		^ self sender fullName
	].