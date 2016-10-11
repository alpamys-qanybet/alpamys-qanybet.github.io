angular.module('tmg').controller 'BlogCtrl', ['$scope', '$rootScope', '$cookies', '$state', ($scope, $rootScope, $cookies, $state)->
	console.log 'BlogCtrl'
	$rootScope.current = 'contact'
	$rootScope.showNav = true

	$rootScope.random = Math.floor(Math.random() * $rootScope.randomRange)

	$('.button-collapse').sideNav('hide')

	jQuery(window).on 'load', ->
		jQuery('.blog').masonry({
			itemSelector: '.blog-post',
			columnWidth: '.blog-post',
			percentPosition: true
		})

	height = jQuery('.caption').height()
	if jQuery(window).width()
		jQuery('#featured').css('height', height)
		jQuery('#featured img').css('height', height)
]
