field definition
shouldGenerate: fieldname policy: aSymbol 
	"Answer true if the field accessors must be compiled.
	Do so according to the following rules:
	- aSymbol = #always always generate the accessors
	- aSymbol = #never never generate the accessors
	- aSymbol = #generated only re-generate the auto-generated accessors
	- aSymbol = #absent only generate the absent accessors"
	aSymbol = #never ifTrue: [^ false].
	aSymbol = #always ifTrue: [^ true].
	aSymbol = #absent ifTrue: [^ (self methodDictionary includesKey: fieldname) not].
	aSymbol = #generated
		ifTrue: [^ (self methodDictionary includesKey: fieldname)
				and: [(self methodDictionary at: fieldname) pragmas
						anySatisfy: [:p | p keyword = #generated]]].
	self error: 'unknow generation policy'