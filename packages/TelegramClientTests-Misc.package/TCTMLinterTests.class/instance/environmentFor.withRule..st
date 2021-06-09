private
environmentFor: aPlugIn withRule: aRule

	^ aPlugIn = SLSmallLintPlugIn
		ifTrue: [TCTMScopedEnvironment newFor: self classTestObjects test: aRule plugIn: SLSmallLintPlugIn]
		ifFalse: [SLDefaultEnvironment new]