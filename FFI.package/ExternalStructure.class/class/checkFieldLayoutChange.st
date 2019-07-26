field definition
checkFieldLayoutChange
	"Recompile the spec and field accessors if the layout changed.
	Answer true if the layout changed.
	This is usefull at system startup if some structure are machine dependent.
	No provision is made for correct initialization order of nested structures.
	The correct order of invocation is left at upper responsibility."
	
	| newCompiledSpec oldCompiledSpec |
	oldCompiledSpec := compiledSpec.
	newCompiledSpec := self compileFields: self fields withAccessors: #never.
	oldCompiledSpec = newCompiledSpec ifTrue: [^false].
	"only regenerate the automatically generated fields: the others are under user responsibility"
	compiledSpec := self compileFields: self fields withAccessors: #generated.
	ExternalType noticeModificationOf: self.
	^true