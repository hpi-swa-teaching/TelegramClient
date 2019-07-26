field definition
compileFields: fieldSpec
	"Compile the field definition of the receiver.
	Return the newly compiled spec."
	compiledSpec := self compileFields: fieldSpec withAccessors: #never.
	ExternalType noticeModificationOf: self.
	^compiledSpec