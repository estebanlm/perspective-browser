accessing
baseline: spec 
	<baseline>
	
	spec for: #pharo do: [
		spec repository: 'filetree://repository/perspective-browser'. 
		
		spec
			package: 'Glamour-FastTable'
				with: [ spec repository: 'http://smalltalkhub.com/mc/FastTable/main' ];
			package: 'PerspectiveBrowser'
				with: [ spec requires: #('Glamour-FastTable') ];
			package: 'PerspectiveBrowser-SVC' 
				with: [ spec requires: #('PerspectiveBrowser') ].
			
		spec 
			group: 'default' with: #('core');
			group: 'core' with: #('PerspectiveBrowser' 'PerspectiveBrowser-SVC')].