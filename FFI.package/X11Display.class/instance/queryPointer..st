accessing
queryPointer: aX11Window
	| root child rootX rootY winX winY mask |
	root := X11Window display: self.
	child := X11Window display: self.
	rootX := WordArray new: 1.
	rootY := WordArray new: 1.
	winX := WordArray new: 1.
	winY := WordArray new: 1.
	mask := WordArray new: 1.
	self XQueryPointer: self window: aX11Window returnRoot: root child: child
		rootX: rootX rootY: rootY winX: winX winY: winY mask: mask.
	^{root. child. rootX first @ rootY first. winX first @ winY first. mask first}