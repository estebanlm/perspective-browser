testing
match: aString
	^ self displayName 
		includesSubstring: aString
		caseSensitive: false