angular.module('tmg').controller 'RpnCtrl', ['$scope', '$state','$rootScope', '$api', '$cookies', ($scope, $state, $rootScope, $api, $cookies)->
	$scope.is =
		iin: true
		keyboard: false
		queue: true
		tied: false

	$scope.iin = null
	$scope.$watch  ->
		$scope.iin
	,
		(newvalue,oldvalue)->
			if newvalue
				console.log newvalue.length
				if newvalue.length == 12
					$scope.is.keyboard = false
					requestIin newvalue
				else if newvalue.length == 0
					$scope.iin = null

	$scope.append = (char)->
		if $scope.iin
			$scope.iin += char
		else
			$scope.iin = char

	$scope.clear = ->
		$scope.iin = $scope.iin.substring 0, $scope.iin.length-1

	$scope.person = null

	$scope.keys = [0..9]

	$scope.cancelNotTied = ->
		$scope.is.iin= true
		$scope.is.queue= true
		$scope.is.tied= false
		$scope.iin = null
		$scope.person = null

	$scope.iinNotExists = false

	requestIin = (iin)->
		$rootScope.loading = true
		$api.rpn.person iin, (data)->
			$rootScope.loading = false
			$scope.iinNotExists = data.length == 0
			$scope.is.iin = false

			if not $scope.iinNotExists
				console.log 'not empty'
				$scope.iinNotExists = data.plain()[0].isDel

			if not $scope.iinNotExists
				console.log 'exists'
				$scope.person = data.plain()[0]
				
				if $scope.person.activeAttachment
					$api.rpn.territory.get $scope.person.activeAttachment.territoryServiceID, (data)->
						# $rootScope.loading = false
						console.log data

					$api.rpn.territory.org $scope.person.activeAttachment.orgHealthCare.id, (data)->
						# $rootScope.loading = false
						console.log data


			# $scope.is.tied = $scope.person.activeAttachment.orgHealthCare.id == '102'

	$scope.home = ->
		$state.transitionTo 'home'
]