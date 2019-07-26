internal
fireListenerMessage: msg
	| ls |
	ls := (listener at: msg class ifAbsent: [ ^nil]).
	ls do: [:l | 
		(l first) perform: (l second) withArguments: (Array with: msg)]