*PerspectiveBrowser-SVC
makeDirty
	^ (self asFormOfDepth: 32) mergeBottomRightWith: Smalltalk ui icons overlayDirtyIcon
	
