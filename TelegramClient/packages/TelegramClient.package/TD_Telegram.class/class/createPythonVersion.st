instance creation
createPythonVersion
	| telegram |
	telegram := self createTelegram: (TD_JSONClientPython new).
	self openUI: telegram.
	^ telegram