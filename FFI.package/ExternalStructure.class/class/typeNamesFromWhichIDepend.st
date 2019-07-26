field definition
typeNamesFromWhichIDepend
	"Answer the set of type names of my fields (including pointer stars)"
	| f |
	(f := self fields) isEmpty ifTrue: [^Set new].
	f first isArray ifFalse: [^Set with: f second].
	^f collect: [:e | e second] as: Set