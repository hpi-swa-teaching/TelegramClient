accessing
messages

	^ self messageIds collect: [:aNumber | self messageDictionary at: aNumber]