angular.module('tmg').directive "menu", ["$dictionary", "$cookies", ($dictionary, $cookies)->
	restrict: "EA"
	transclude: true
	templateUrl: 'static/scripts/directives/menu.html'
	scope:
		'type': '@'
	
	controller: ($scope, $element)->
		
	link: (scope, elm, attrs)->
		scope.map =
			content: []

		scope.menu = []
		scope.onroot = true
		scope.content = null

		process = (data)->
			scope.menu = []
			
			for i in data
				e =
					id: i.id
					name:
						kz: i.name_kz
						en: i.name_en
						ru: i.name_ru
			
				scope.menu.push angular.copy e
	
				c = 
					kz: i.content_kz
					en: i.content_en
					ru: i.content_ru
			
				scope.map.content['m'+i.id] = c

		scope.fetch = (hierarchyId)->
			if hierarchyId
				$dictionary.children scope.type, hierarchyId, (data)->
					process data

			else # root
				$dictionary.root scope.type, (data)->
					process data

			if scope.map.content['m'+hierarchyId]?
				scope.content = scope.map.content['m'+hierarchyId]
			else
				scope.content = null

		scope.breadcrumbs = []

		scope.select = (item)->
			scope.breadcrumbs.push angular.copy item
			scope.fetch item.id
			scope.onroot = false

		scope.fetch()

		scope.$watch ->
			$cookies.get 'lng'
		,
			(newvalue,oldvalue)->
				if newvalue == 'kk' or newvalue == 'kz'
					scope.lng = 'kz'
				else
					scope.lng = newvalue
]
    
