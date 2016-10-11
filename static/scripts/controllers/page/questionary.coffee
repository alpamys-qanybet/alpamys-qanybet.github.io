angular.module('tmg').controller 'QuestionaryCtrl', ['$scope', '$rootScope', '$cookies', '$state', ($scope, $rootScope, $cookies, $state)->
	console.log 'QuestionaryCtrl'
	$rootScope.current = 'questionary'
	$rootScope.showNav = true
	
	$scope.is =
		keyboard: false
		inProcess: true
		first: true
		last: false

	$scope.map =
		question: []

	$scope.map.question['q1'] =
		question: 'Знаете ли Вы, что в «ГП №2» работает Служба поддержки пациентов и внутреннего контроля?'
		option: [
			'Да'
		,
			'Нет'
		]
		answer: ''

	$scope.map.question['q2'] =
		question: 'Хотели ли бы Вы, обратится в Службу поддержки пациентов и внутреннего контроля поликлиники?'
		option: [
			'Да'
		,
			'Нет'
		]
		answer: ''

	$scope.map.question['q3'] =
		question: 'По какому вопросу: ожидание приема или осмотр врача более 15 минут?'
		option: [
			'Недостаточность предоставляемой информации в справочной или регистратуре'
		,
			'Платно проходили диагностическое обследование'
		,
			'Платные манипуляции или операции'
		,
			'Недоброжелательность или невнимательность медицинского персонала'
		]
		answer: ''

	$scope.map.question['q4'] =
		question: 'Знаете ли Вы номер телефона Call-центра в который можно обратиться?'
		option: [
			'Да'
		,
			'Нет'
		]
		answer: ''

	$scope.map.question['q5'] =
		question: 'Удовлетворены ли Вы уровнем обслуживания и уровнем квалификации врачей поликлиники?'
		option: [
			'Да'
		,
			'Нет'
		]
		answer: ''

	$scope.map.question['q6'] =
		question: 'Приходилось ли Вам обращаться по поводу нарушении правил Этических норм поведения медперсонала поликлиники?'
		option: [
			'Да'
		,
			'Нет'
		]
		answer: ''

	$scope.map.question['q7'] =
		question: 'Были ли нарушения сохранения конфиденциальности медперсоналом поликлиники?'
		option: [
			'Да'
		,
			'Нет'
		]
		answer: ''

	$scope.map.question['q8'] =
		question: 'Как Вы оцениваете уровень оказываемой медицинской помощи нашей поликлиники?'
		option: [
			'Отлично'
		,
			'Хорошо'
		,
			'Удовлетворительно'
		,
			'Неудовлетворительно'
		]
		answer: ''

	###
	$scope.map.question['q9'] =
		question: 'Какое диагностическое обследование Вы дополнительно хотели бы пройти в нашей поликлинике?'
		answer: ''

	$scope.map.question['q10'] =
		question: 'Какое диагностическое обследование по заключению Вас не устраивает?'
		answer: ''

	$scope.map.question['q11'] =
		question: 'Как Вы оцениваете уровень оказываемой медицинской помощи нашей поликлиники?'
		answer: ''
	###

	n = 8
	$scope.counter = 1
	# $scope.question = $scope.map.question['q'+$scope.counter]
	
	checkIs = ->
		if $scope.counter == 1
			$scope.is.first = true
		else
			$scope.is.first = false

		if $scope.counter == n+1
			$scope.is.last = true
		else
			$scope.is.last = false

	$scope.prev = ->
		$scope.counter--
		if $scope.counter == 0
			$scope.counter = n

		checkIs()

		# $scope.question = $scope.map.question['q'+$scope.counter]

	$scope.next = ->
		console.log 'next'
		$scope.counter++
		console.log $scope.counter

		if $scope.counter == n+1
			$scope.is.inProcess = false
			email()

		checkIs()
		# else
			# $scope.question = $scope.map.question['q'+$scope.counter]

	email = ->
		answer = ''
		for i in [1..n]
			answer += encodeURIComponent '<h1> '+ i + '. ' + $scope.map.question['q'+i].question + '</h1><p>' + $scope.map.question['q'+i].answer  + '</p><br/><br/>'
		
		dataString = 'name='+answer

		jQuery.ajax
			type: "POST"
			url: domainUrl+'/main/email'
			data: dataString
			success: (data)->
				$scope.is.inProcess = true
				$scope.counter = 1
				checkIs()
				$state.transitionTo 'home'
				# $scope.question = 
				# $scope.map.question['q'+$scope.counter]
		
	# $scope.iin = null
	
	$scope.append = (char)->
		if $scope.map.question['q'+$scope.counter].answer
			$scope.map.question['q'+$scope.counter].answer += char
		else
			$scope.map.question['q'+$scope.counter].answer = char

	$scope.clear = ->
		$scope.map.question['q'+$scope.counter].answer = $scope.map.question['q'+$scope.counter].answer.substring 0, $scope.map.question['q'+$scope.counter].answer.length-1

	$scope.symbols1 = ['1','2','3','4','5','6','7','8','9','0','-','+']
	$scope.symbols2 = ['-','/',':',';','(',')','&','@','"','\'','.',',']
	$scope.symbols2 = ['?','/!','=','<','>','#','%','^','*']

	$scope.keys1 = ['ә','і','ң','ғ','ү','ұ','қ','ө','һ']
	$scope.keys2 = ['й','ц','у','к','е','н','г','ш','щ','з','х']
	$scope.keys3 = ['ф','ы','в','а','п','р','о','л','д','ж','э']
	$scope.keys4 = ['я','ч','с','м','и','т','ь','ъ','б','ю']
]