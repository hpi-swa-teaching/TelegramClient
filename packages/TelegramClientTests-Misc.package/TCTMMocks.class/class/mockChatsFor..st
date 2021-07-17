chat
mockChatsFor: aCore

	^ self mockChats collect: [:aChat | aChat core: aCore. aChat]