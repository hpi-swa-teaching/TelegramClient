as yet unclassified
openWindow
	| text model |
      self window: SystemWindow new.
	model :=  Model new.
      self window model: model.
	self window setLabel: 'Debug'.

      text := PluggableTextMorph on: self writerStream text: #contents accept:nil . 
	text model: self writerStream.       
      self window addMorph: text frame: (0@0 corner: 1@1). 
       
	self window  openInWorld.