receiving
update

	| event |

	event := self client receive: 0.05.
	"Short pause to make image more responsive, see https://github.com/hpi-swa-teaching/TelegramClient/pull/412#issuecomment-868465126"
	event ifNil: [5 milliSeconds wait].
	event ifNotNil: [
		[self handleEvent: (TCCEvent newFromTdlibEvent: event)] fork
	].