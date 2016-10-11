angular.module('tmg').service '$dictionary', ['$rootScope', '$api', ($rootScope, $api)->
	types = [ 'about', 'schedule', 'service', 'support' ]
	
	this.types = ->
		types
	
	this.root = (type, process)->
		if type == 'about' 
			$api.about.root (data)->
				process data.plain()
		else if type == 'schedule' 
			$api.schedule.root (data)->
				process data.plain()
		else if type == 'service' 
			$api.service.root (data)->
				process data.plain()
		else if type == 'support' 
			$api.support.root (data)->
				process data.plain()

	this.children = (type, id, process)->
		if type == 'about' 
			$api.about.children id, (data)->
				process data.plain()
		else if type == 'schedule' 
			$api.schedule.children id, (data)->
				process data.plain()
		else if type == 'service' 
			$api.service.children id, (data)->
				process data.plain()
		else if type == 'support' 
			$api.support.children id, (data)->
				process data.plain()

	$rootScope.$dictionary = this # global service
]