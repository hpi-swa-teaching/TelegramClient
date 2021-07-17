accessing
hasChat: anID

	^ self anySatisfy: [:aChat | aChat id = anID]