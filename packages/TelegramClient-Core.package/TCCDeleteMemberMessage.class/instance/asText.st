accessing
asText

	| name |
	name := (self core userStore getUserFor: self member) fullName.
	^ 'Removed: ' , name