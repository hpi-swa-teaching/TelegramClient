accessing
downloadUrl

	^ 'https://github.com/hpi-swa-teaching/tdlib/releases/download/v' , self tdlibVersion , '/libtdjson.' , self tdlibVersion , '.dylib'
