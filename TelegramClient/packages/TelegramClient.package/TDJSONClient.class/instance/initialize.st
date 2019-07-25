initialize-release
initialize
	super initialize.
	client := self class create.
	jsonParser := TDJSONParser new.
	destroyed := false.