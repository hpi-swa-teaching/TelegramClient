instance creation
createPythonVersion
	| telegram |
	telegram := self createTelegram: (TDJSONClientPython new).
	self openUI: telegram.
	^ telegram