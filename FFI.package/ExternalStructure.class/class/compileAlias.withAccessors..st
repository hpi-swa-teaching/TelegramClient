field definition
compileAlias: spec withAccessors: aSymbol
	"Define all the fields in the receiver.
	Return the newly compiled spec."
	| fieldName fieldType isPointerField externalType newCompiledSpec |
	fieldName := spec first.
	fieldType := spec second.
	isPointerField := fieldType last = $*.
	fieldType := fieldType copyWithout: $*.
	externalType := ExternalType atomicTypeNamed: fieldType.
	externalType == nil ifTrue:["non-atomic"
		Symbol hasInterned: fieldType ifTrue:[:sym|
			externalType := ExternalType structTypeNamed: sym]].
	externalType == nil ifTrue:[
		Transcript show:'(', fieldType,' is void)'.
		externalType := ExternalType void].
	isPointerField ifTrue:[externalType := externalType asPointerType].
	(fieldName notNil and:[self shouldGenerate: fieldName policy: aSymbol]) ifTrue:[
		self defineAliasAccessorsFor: fieldName
			type: externalType].
	newCompiledSpec := isPointerField 
		ifTrue:[WordArray with: 
					(ExternalType structureSpec bitOr: ExternalType pointerSpec)]
		ifFalse:[externalType compiledSpec].
	^newCompiledSpec