accessing
asReplySnippet

	| snippet |
	snippet := self asSnippet.
	snippet size > self class maxReplySnippetSize ifTrue: [snippet := (snippet copyFrom: 1 to: self class maxReplySnippetSize) , '...'].
	^ self senderName , String cr , snippet