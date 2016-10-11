angular.module('tmg').controller 'StructureCtrl', ['$scope', '$rootScope', '$cookies', '$state', ($scope, $rootScope, $cookies, $state)->
	console.log 'StructureCtrl'
	$rootScope.current = 'structure'
	$rootScope.showNav = true
]