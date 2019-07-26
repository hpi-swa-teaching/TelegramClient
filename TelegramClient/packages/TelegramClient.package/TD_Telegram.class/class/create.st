instance creation
create
	| telegram |
	telegram := self createTelegram: (TD_JSONClient new).
	self openUI: telegram.
	^ telegram.