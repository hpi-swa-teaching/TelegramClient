instance creation
defaultSortBlock

	"sort chats of unknown position last"
	^ [:aChat :someOtherChat |
		(aChat positionKnown not
			and: [someOtherChat positionKnown])
				or: [ aChat positionKnown
					and: [someOtherChat positionKnown]
					and: [aChat position <= someOtherChat position]]]