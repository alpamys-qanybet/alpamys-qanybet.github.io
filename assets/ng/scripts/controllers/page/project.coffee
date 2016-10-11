angular.module('tmg').controller 'ProjectCtrl', ['$scope', '$rootScope', '$cookies', '$state', ($scope, $rootScope, $cookies, $state)->
	console.log 'ProjectCtrl'
	$rootScope.current = 'project'
	$rootScope.showNav = true

	$rootScope.random = Math.floor(Math.random() * $rootScope.randomRange)
	
	$('.button-collapse').sideNav('hide')
	$('#portfolio-item').mixItUp()
	$('.sa-view-project-detail').on 'click', (event)->
		event.preventDefault()
		href = $(this).attr('href') + ' ' + $(this).attr('data-action')
		dataShow = $('#project-gallery-view')
		dataShowMeta = $('#project-gallery-view meta')
		dataHide = $('#portfolio-item')
		preLoader = $('#loader')
		backBtn = $('#back-button')
		filterBtn = $('#filter-button')
		dataHide.animate( { 'marginLeft':'-120%' }, { duration: 400, queue: false } );
		filterBtn.animate( { 'marginLeft':'-120%' }, { duration: 400, queue: false } );
		dataHide.fadeOut(400);
		filterBtn.fadeOut(400)
		setTimeout ->
			preLoader.show()
		, 400
		setTimeout ->
			dataShow.load href, ->
				dataShowMeta.remove()
				preLoader.hide()
				dataShow.fadeIn(600)
				backBtn.fadeIn(600)
		, 800

	$('#back-button').on 'click', (event)->
		event.preventDefault()
		dataShow = $('#portfolio-item')
		dataHide    = $('#project-gallery-view')
		filterBtn   = $('#filter-button')

		$("[data-animate]").each ->
			$(this).addClass($(this).attr('data-animate'))

		dataHide.fadeOut(400)
		$(this).fadeOut(400)
		setTimeout ->
			dataShow.animate( { 'marginLeft': '0' }, { duration: 400, queue: false } )
			filterBtn.animate( { 'marginLeft': '0' }, { duration: 400, queue: false } )
			dataShow.fadeIn(400)
			filterBtn.fadeIn(400)
		, 400

		setTimeout ->
			dataShow.find('.fadeInRight, .fadeInLeft, .fadeInUp, .fadeInDown').removeClass('fadeInRight').removeClass('fadeInLeft').removeClass('fadeInUp').removeClass('fadeInDown')
		, 1500
]
