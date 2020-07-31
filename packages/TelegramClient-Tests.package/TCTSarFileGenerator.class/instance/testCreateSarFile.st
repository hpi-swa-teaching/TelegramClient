sar
testCreateSarFile

	"Creates a release sar file"
	| package ui zip folder |

	package := 'TelegramClient-Core'.
	ui := 'TelegramClient-UI'.
	folder := 'TDLib'.
	zip := ZipArchive new.
	self streamForPackage: package inZip: zip.
	self streamForPackage: ui inZip: zip.
	zip addTree: Smalltalk imagePath match: [:e | e fullName startsWith:
	Smalltalk imagePath , FileDirectory slash , folder].
	zip addString: (self generatePreamble: package uipackage: ui nativeResourceFolder: folder) as: 'install/preamble'.
	zip writeToFileNamed: 'TelegramClient.sar'.