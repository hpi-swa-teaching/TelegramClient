chat
mockChatsFor: aCore

	^ self mockChats do: [:aChat | aChat core: aCore. aChat]