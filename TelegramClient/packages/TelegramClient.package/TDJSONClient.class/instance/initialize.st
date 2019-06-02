as yet unclassified
initialize
	super initialize.
	client := self class create.
	jsonParser := TDJSONParser new.
	destroyed := false