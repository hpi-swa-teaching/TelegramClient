as yet unclassified
createSARFile
	"Creates a release sar file"
|package ui zip mczStream workingCopy version folder |

package := 'TelegramClient-Core'.
ui := 'TelegramClient-UI'.
folder := 'TDLib'.

zip := ZipArchive new.
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
version := workingCopy newVersion.
version fileOutOn: mczStream.
(zip addString: mczStream contents as: package , '.mcz') desiredCompressionLevel: 0.
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: ui).
version := workingCopy newVersion.
version fileOutOn: mczStream.
(zip addString: mczStream contents as: ui , '.mcz') desiredCompressionLevel: 0.
zip addTree: Smalltalk imagePath match: [:e | e fullName startsWith:
    Smalltalk imagePath , FileDirectory slash , folder].
zip addString: '| file destination |
self fileInMonticelloZipVersionNamed:
    ''' , package , '.mcz''.' ,'
file := ((Smalltalk platformName) startsWith: ''Win32'')
			ifTrue: [''tdjson.dll'' ]
			ifFalse: [(anOsName startsWith: ''Mac OS'')
				ifTrue: [''libtdjson.1.6.0.dylib'' ]
				ifFalse: [''libtdjson.so.1.6.0'' ]].
destination := ((Smalltalk platformName) startsWith: ''Win32'')
			ifTrue: [''Win32/tdjson.dll'' ]
			ifFalse: [(anOsName startsWith: ''Mac OS'')
				ifTrue: [''Resources/libtdjson.1.6.0.dylib'' ]
				ifFalse: [''Resources/libtdjson.so.1.6.0'' ]].
						
self fileInMonticelloZipVersionNamed:
    ''' , ui , '.mcz''.
(self membersMatching: (''' , folder , FileDirectory slash , ''',file)) do: [ :f | self
    extractMember: f toFileNamed: destination].' as: 'install/preamble'.
zip writeToFileNamed:  'TelegramClient.sar'.