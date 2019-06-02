as yet unclassified
openWindow
	| t1 t2 |
	self window: SystemWindow new.
	t2 := Model new.
	self window model: t2.
	self window setLabel: 'Debug'.
	t1 := PluggableTextMorph
				on: self writerStream
				text: #contents
				accept: nil.
	t1 model: self writerStream.
	self window
		addMorph: t1
		frame: (0 @ 0 corner: 1 @ 1).
	self window openInWorld