running
setUp

	self core: TCTTestCore new.
	self users: (TCCUsers new
		core: self core)
