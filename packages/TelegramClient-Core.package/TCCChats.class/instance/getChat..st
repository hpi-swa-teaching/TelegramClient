accessing
getChat: anID

	^ self detect: [:aChat | aChat userId = anID]