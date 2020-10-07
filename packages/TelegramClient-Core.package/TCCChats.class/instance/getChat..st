accessing
getChat: anID

	^ self detect: [:aChat | aChat id = anID]