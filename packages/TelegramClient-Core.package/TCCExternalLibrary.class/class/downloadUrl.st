as yet unclassified
downloadUrl
	"URL of the ZIP archive that contains the shared library and its dependencies. All files should be placed at the root of the archive. The main library should have the name that is returned by sending the message 'fileName' + the platform specific file extension. Any other dependencies should be named in a way that the linker can find them."
	
	^ self subclassResponsibility