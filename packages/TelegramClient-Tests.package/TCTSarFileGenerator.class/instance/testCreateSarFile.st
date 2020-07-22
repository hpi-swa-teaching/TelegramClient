sar
testCreateSarFile
	"Creates a release sar file"
|package ui zip mczStream workingCopy version folder |

package := 'TelegramClient-Core'.
ui := 'TelegramClient-UI'.
folder := 'TDLib'.
zip := ZipArchive new.
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
version := self versionForWorkingCopy: workingCopy.
version fileOutOn: mczStream.
(zip addString: mczStream contents as: package , '.mcz') desiredCompressionLevel: 0.
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := MCWorkingCopy forPackage: (MCPackage new name: ui).
version := self versionForWorkingCopy: workingCopy.
version fileOutOn: mczStream.
(zip addString: mczStream contents as: ui , '.mcz') desiredCompressionLevel: 0.
zip addTree: Smalltalk imagePath match: [:e | e fullName startsWith:
    Smalltalk imagePath , FileDirectory slash , folder].
zip addString: (self generatePreamble: package uipackage: ui nativeResourceFolder: folder) as: 'install/preamble'.
zip writeToFileNamed:  'TelegramClient.sar'.
