field definition
sortStructs: structureClasses into: sortedClasses 
	"Sort the structure definitions so as to obtain a correct initialization order."
	
	[| structClass prevStructClass dependsOnOtherTypes |
	structureClasses isEmpty ifTrue: [^ self].
	structClass := structureClasses anyOne.
	
	[dependsOnOtherTypes := structClass typeNamesFromWhichIDepend.
	prevStructClass := structureClasses detect: [:c | c ~~ structClass and: [dependsOnOtherTypes includes: c name]] ifNone: [nil].
	prevStructClass isNil]
		whileFalse: [structClass := prevStructClass].

	"we found a structure/alias which does not depend on other structures/aliases
	add the corresponding class to the initialization list"
	sortedClasses add: (structureClasses remove: structClass)] repeat