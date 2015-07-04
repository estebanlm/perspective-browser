testing
match: aString
	^ self name 
		includesSubstring: aString
		caseSensitive: false