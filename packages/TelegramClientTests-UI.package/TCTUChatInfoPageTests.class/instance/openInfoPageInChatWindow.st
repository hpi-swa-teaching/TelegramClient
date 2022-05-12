navigating
openInfoPageInChatWindow

	| titleBar |

	titleBar := (self subject findByClass: TCUChatWindow) morphs collect: [:chatWindow | chatWindow titleBar].
	(self subject createWrapperFor: titleBar) click.