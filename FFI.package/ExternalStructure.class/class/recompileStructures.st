system startup
recompileStructures
	"Check and update the layout of all subclasses for host machine dependency.
	Arrange to check the inner nested structures first."
	
	"ExternalStructure recompileStructures"
	| sorted unsorted |
	unsorted := self withAllSubclasses.
	sorted := OrderedCollection new: unsorted size.
	self sortStructs: unsorted into: sorted.
	sorted do: [:e | e checkFieldLayoutChange]