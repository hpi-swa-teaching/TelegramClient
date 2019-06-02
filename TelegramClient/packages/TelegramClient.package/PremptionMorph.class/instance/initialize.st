as yet unclassified
initialize
	super initialize.
	Transcript clear.
	Debug clear.
	clientSandbox := ClientSandbox new.
	self openInWorld