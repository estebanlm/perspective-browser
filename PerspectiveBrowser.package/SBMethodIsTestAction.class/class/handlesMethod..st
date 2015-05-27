testing
handlesMethod: aMethod
	^ aMethod isScriptMethod or: [ aMethod isScriptMethodWithScript ]