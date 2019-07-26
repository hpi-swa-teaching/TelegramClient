field definition
defineFields: fieldSpec
	"Define all the fields in the receiver"
	compiledSpec := self compileFields: fieldSpec withAccessors: #always.
	ExternalType noticeModificationOf: self.
	^compiledSpec