accessing
getChat: aNumber

	^ self detect: [:aChat | aChat id = aNumber]