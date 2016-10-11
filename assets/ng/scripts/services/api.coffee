angular.module('tmg').service '$api', ['$rootScope', 'Restangular','$http', '$q', '$cookies', ($rootScope, Restangular, $http, $q, $cookies)->
	# CRUD
	crud =
		# GET ":url/"
		list: (process)->
			Restangular.all(this.url).getList().then (data)->
				process data

		# GET ":url/{id}"
		get: (id, process)->
			Restangular.one(this.url, id).get().then (data)->
				process data

		# POST ":url/"
		create: (plain, process)->
			Restangular.all(this.url).post(plain).then (data)->
				process data

		# PUT ":url/{id}"
		update: (plain, process)->
			Restangular.one(this.url, plain.id).customPUT(plain).then (data)->
				process data

		# DELETE ":url/{id}"
		delete: (id, process)->
			Restangular.one(this.url, id).remove({}).then (data)->
				process data
	# faq
	this.faq = angular.copy crud
	this.faq.url = 'faq'

	# support
	this.support = angular.copy crud
	this.support.url = 'support'
	this.support.root = (process)->
		Restangular.all(this.url+'/root').getList().then (data)->
			process data

	this.support.children = (id, process)->
		Restangular.all(this.url+'/'+id+'/children').getList().then (data)->
			process data

	# service
	this.service = angular.copy crud
	this.service.url = 'service'
	this.service.root = (process)->
		Restangular.all(this.url+'/root').getList().then (data)->
			process data

	this.service.children = (id, process)->
		Restangular.all(this.url+'/'+id+'/children').getList().then (data)->
			process data

	# schedule
	this.schedule = angular.copy crud
	this.schedule.url = 'schedule'
	this.schedule.root = (process)->
		Restangular.all(this.url+'/root').getList().then (data)->
			process data

	this.schedule.children = (id, process)->
		Restangular.all(this.url+'/'+id+'/children').getList().then (data)->
			process data

	# about
	this.about = angular.copy crud
	this.about.url = 'about'
	this.about.root = (process)->
		Restangular.all(this.url+'/root').getList().then (data)->
			process data

	this.about.children = (id, process)->
		Restangular.all(this.url+'/'+id+'/children').getList().then (data)->
			process data

	$rootScope.$api = this # global service
]
