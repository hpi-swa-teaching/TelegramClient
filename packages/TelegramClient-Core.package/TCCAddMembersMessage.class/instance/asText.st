accessing
asText

	| names |
	names := self members collect: [:aUserId | (self core userStore getUserFor: aUserId) fullName].
	^ 'Added: ' , (names joinSeparatedBy: ', ')