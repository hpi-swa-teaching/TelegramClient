as yet unclassified
addPollOption: anOption
	
	| option |
	option := TCUPollOption new: self with: anOption.
	options add: option.
	self addMorphBack: option.