instance creation
defaultSortBlock

	"sort chats of unknown position last, higher position means higher priority"
	^ [:aChat :someOtherChat |
		(aChat positionKnown
			and: [someOtherChat positionKnown not])
				or: [ aChat positionKnown
					and: [someOtherChat positionKnown]
					and: [aChat position > someOtherChat position]]]