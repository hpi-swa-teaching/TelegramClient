helpers
generatePreamble: package uipackage: ui nativeResourceFolder: folder

	"Returns the inteded filepath for the tdlib binaries"
^'| destination file |
self fileInMonticelloZipVersionNamed:
''' , package , '.mcz''.' ,'
destination := FileDirectory default.			
self fileInMonticelloZipVersionNamed:
''' , ui , '.mcz''.
TCUTelegram registerInWorldMenu.
((self zip )members) do: [ :f | self extractMemberWithoutPath: f inDirectory: destination].' 