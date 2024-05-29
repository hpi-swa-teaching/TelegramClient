as yet unclassified
addPollOptions

	self messageModel optionText do: [:option |
		self addMorphBack: (self addPollOption: option)].