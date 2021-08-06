accessing
hasChat: aNumber

	^ self anySatisfy: [:aChat | aChat id = aNumber]