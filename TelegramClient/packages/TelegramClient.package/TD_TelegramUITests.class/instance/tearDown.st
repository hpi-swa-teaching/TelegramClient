as yet unclassified
tearDown
	telegram destroy.
	telegram := nil.
	uiModel dependents first delete.
	uiModel := nil