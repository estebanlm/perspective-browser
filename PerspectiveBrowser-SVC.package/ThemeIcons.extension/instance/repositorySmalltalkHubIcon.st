*PerspectiveBrowser-SVC
repositorySmalltalkHubIcon
	^ self icons
			at: #'repositorySmalltalkHubIcon'
			ifAbsentPut: [ 
				Form
					extent: 16@16
					depth: 32
					fromArray: self repositorySmalltalkHubIconContents 
					offset: 0@0 ]