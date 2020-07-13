as yet unclassified
setUp
	
	| core |
	core := TCTTestCore new.
	0.3 seconds wait.
	core authHandler logout.
	0.5 seconds wait.
	