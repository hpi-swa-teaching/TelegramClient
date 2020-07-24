menu
registerInWorldMenu

	"Registers the open action in the world menu"
	TheWorldMenu registerOpenCommand: {'Telegram'. {TCUTelegram. #newWithTCCCore}}