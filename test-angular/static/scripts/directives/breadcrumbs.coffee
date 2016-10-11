angular.module('tmg').directive "breadcrumbs", ["$cookies", ($cookies)->
	restrict: "EA"
	templateUrl: 'static/scripts/directives/breadcrumbs.html'
	scope:
		'init': '&'
		'fetch': '&'
		'list': '='
		'onroot': '='
	
	controller: ($scope, $element)->
		
	link: (scope, elm, attrs)->
		init = ->
			scope.list = []
			root = 
				id: 'root'
				name:
					kz: 'Негізгі бет'
					en: 'Main'
					ru: 'Главная страница'
				
			scope.list.push root

		init()

		scope.process = (id)->
			if id == 'root'
				scope.onroot = true
				init()
				scope.fetch()
			else
				scope.onroot = false
				list = []
				for b in scope.list
					list.push b
					if b.id == id
						break

				scope.list = list
				scope.fetch({id:id})

		scope.$watch ->
			$cookies.get 'lng'
		,
			(newvalue,oldvalue)->
				if newvalue == 'kk' or newvalue == 'kz'
					scope.lng = 'kz'
				else
					scope.lng = newvalue
]
    
