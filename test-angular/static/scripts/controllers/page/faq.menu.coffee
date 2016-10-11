angular.module('tmg').controller 'FaqMenuCtrl', ['$scope', '$rootScope', '$api', '$cookies', '$state', '$locales', ($scope, $rootScope, $api, $cookies, $state, $locales)->
	$rootScope.current = 'support'
	$rootScope.showNav = false

	$locales.changeLang 'kk'

	###
	$scope.menu = [
		name: 'Как прикрепиться к вашей поликлинике?'
		url: 'faq/2'
	,
		name: 'Имею ли я право прикрепиться к вашей поликлинике, если проживаю в районе, который не относится к территории, закреплённой за вашей поликлиникой?'
		url: 'faq/3'
	,
		name: 'Как попасть на приём к невропатологу?'
		url: 'faq/4'
	,
		name: 'Когда участковый педиатр должен посетить моего новорождённого ребёнка?'
		url: 'faq/5'
	,
		name: 'Как вызвать врача на дом?'
		url: 'faq/6'
	,
		name: 'Если мне нагрубил медперсонал, куда я могу обратиться?'
		url: 'faq/7'
	,
		name: 'Как получить лечение в условиях дневного стационара?'
		url: 'faq/8'
	,
		name: 'Какие бесплатные услуги предоставляются?'
		url: 'faq/9'
	,
		name: 'Какие бесплатные лекарства предоставляются?'
		url: 'faq/10'
	,
		name: 'СКРИНИНГУ ПОДЛЕЖАТ СЛЕДУЮЩИЕ ВОЗРАСТНЫЕ ГРУППЫ:'
		url: 'faq/11'
	]
	###
	$scope.menu = []

	$api.faq.list (data)->
		list = []
		for i in data.plain()
			e =
				title_kz: i.title_kz
				title_en: i.title_en
				title_ru: i.title_ru
				url: 'faq/'+i._order
			
			list.push e

		$scope.menu = angular.copy list
]