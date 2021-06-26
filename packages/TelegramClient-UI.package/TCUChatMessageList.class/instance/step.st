accessing
step

	self isLoadingHistory ifTrue:
		[self scroller offset y < self class defaultScrollOffsetBeforeLoading
			ifTrue: [self core getChatHistoryFrom: self chat id]].