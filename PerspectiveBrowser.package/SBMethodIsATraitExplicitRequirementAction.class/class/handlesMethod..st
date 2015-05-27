testing
handlesMethod: aMethod
	^ aMethod isRequired and: [ aMethod methodClass ~= aMethod origin ]