accessing
getInputFocus
	| focus revert |
	focus := X11Window display: self.
	revert := WordArray new: 1.
	self XGetInputFocus: self with: focus with: revert.
	^focus