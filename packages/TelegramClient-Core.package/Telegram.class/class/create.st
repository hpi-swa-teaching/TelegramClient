instance creation
create
	| telegram |
	telegram := self createTelegram: (TDJSONClient new).
	self openUI: telegram.
	^ telegram.