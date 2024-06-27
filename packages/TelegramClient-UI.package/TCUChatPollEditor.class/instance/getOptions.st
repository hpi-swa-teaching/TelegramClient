as yet unclassified
getOptions

	self options: (OrderedCollection new).
	self options add: (self allInputFields at: 2) contents asString withBlanksTrimmed squeakToUtf8.
	self options add: (self allInputFields at: 3) contents asString withBlanksTrimmed squeakToUtf8.
	self options add: (self allInputFields at: 4) contents asString withBlanksTrimmed squeakToUtf8.