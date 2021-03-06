// Generated by CoffeeScript 1.4.0
(function() {

  angular.module('tmg').controller('SchemeCtrl', [
    '$scope', '$rootScope', '$cookies', '$state', function($scope, $rootScope, $cookies, $state) {
      var list, m, tmp, _i, _len;
      console.log('SchemeCtrl');
      $rootScope.current = 'scheme';
      $rootScope.showNav = false;
      $scope.floor = 1;
      list = [
        {
          name: 'Выпускной центр',
          cab: 101
        }, {
          name: 'Регистратура',
          cab: 102
        }, {
          name: 'Касса',
          cab: 103
        }, {
          name: 'Оташы Айтбаева А.О.',
          cab: '104a'
        }, {
          name: 'Оташы Сүлейменова А.Т.',
          cab: 104
        }, {
          name: 'Травматолог М.С.',
          cab: 105
        }, {
          name: 'Давлетбаев К.О.',
          cab: 106
        }, {
          name: 'Уролог Даннов Т.Д.',
          cab: 107
        }, {
          name: 'Лаборатория',
          cab: 108
        }, {
          name: 'Рентгенолог Кенжалина Ш.С.',
          cab: 109
        }, {
          name: 'Рентгенолог Тажибаева А.Ж.',
          cab: 110
        }, {
          name: 'Рентгенолог Джурмагамбетова Ж.Х.',
          cab: 112
        }, {
          name: 'Зертханашы Божкова Х.В.',
          cab: 113
        }, {
          name: 'Зертханашы Умбетова А.Б.',
          cab: 116
        }, {
          name: 'Зертханашы Каирова Э.Т.',
          cab: 117
        }, {
          name: 'Окулист Берсебаева Н.С.',
          cab: 118
        }, {
          name: 'Фильтр Эпидемолог',
          cab: 120
        }, {
          name: 'Бөлім меңгерушісі Каликова А.Г.',
          cab: 121
        }, {
          name: 'Доврачебный кабинет',
          cab: 122
        }, {
          name: 'Ерлер дәретханасы',
          cab: 'wcm'
        }, {
          name: 'ФГДС',
          cab: 123
        }, {
          name: 'Оташы Стоматолог Кинадилов А.Н.',
          cab: 124
        }, {
          name: 'Жалпы тәжірибелік дәрігер Куатова Н.А.',
          cab: 125
        }, {
          name: 'Жалпы тәжірибелік дәрігер Аймакова У.Ж.',
          cab: 126
        }, {
          name: 'Жалпы тәжірибелік дәрігер Калманова Ж.Т.',
          cab: 127
        }, {
          name: 'Фармацевт',
          cab: 128
        }, {
          name: 'Флюрорегистратура-кабинет',
          cab: 129
        }, {
          name: 'Жалпы тәжірибелік дәрігер Сарбопеева Г.А.',
          cab: 132
        }, {
          name: 'Аға Акушер Гинеколог Койбагарова К.К.',
          cab: 133
        }, {
          name: 'Акушер гинеколог Сахипова Г.Ж.',
          cab: 134
        }, {
          name: 'Жалпы тәжірибелік дәрігер Сай В.В.',
          cab: 135
        }, {
          name: 'Акушер гинеколог Койбагарова К.К.',
          cab: 136
        }, {
          name: 'Акушер гинеколог Утегенова З.Б.',
          cab: 137
        }, {
          name: 'Профилактика',
          cab: 138
        }, {
          name: 'Психолог',
          cab: 139
        }, {
          name: 'Рентген',
          cab: 140
        }, {
          name: 'УЗИ',
          cab: 142
        }, {
          name: 'Қарау кабинетінің акушеркасы Дегенбаева Р.К.',
          cab: 143
        }, {
          name: 'Жалпы тәжірибелік дәрігер Утегенова А.С.',
          cab: 144
        }, {
          name: 'Жалпы тәжірибелік дәрігер Сатыбалдина Р.Б.',
          cab: 145
        }, {
          name: 'Бөлім меңгерушісі Джаканова Э.К.',
          cab: 146
        }, {
          name: 'Жалпы тәжірибелік дәрігер Конысова А.С.',
          cab: 147
        }, {
          name: 'Жалпы тәжірибелік дәрігер Калманова Ж.Т.',
          cab: 148
        }, {
          name: 'Медстат',
          cab: 201
        }, {
          name: 'Орынбасар Тунгатарова М.А.',
          cab: 202
        }, {
          name: 'Инспектор отдела кадров',
          cab: 203
        }, {
          name: 'Орынбасар',
          cab: 204
        }, {
          name: 'Бас медбике',
          cab: 205
        }, {
          name: 'ВКК Каракушукова Б.М.',
          cab: 206
        }, {
          name: 'Сарсенова Ә.Ж.',
          cab: 207
        }, {
          name: 'Ревматолог Панкратова Т.Р.',
          cab: 208
        }, {
          name: 'Гастроэнтеролог Нарбекова Ж.К.',
          cab: 209
        }, {
          name: 'Кардиолог Бактагереева Қ.Б.',
          cab: 210
        }, {
          name: 'Күндізгі стационар',
          cab: 'stat'
        }, {
          name: 'Диабет мектебі',
          cab: 212
        }, {
          name: 'Эндокринолог Мулдагалиева А.Б.',
          cab: 213
        }, {
          name: 'Бөлім меңгерушісі Адайханова Б.А.',
          cab: 214
        }, {
          name: 'Невропатолог Каракузиева Ж.С.',
          cab: 215
        }, {
          name: 'Кабинет функциональной диагностики',
          cab: 216
        }, {
          name: 'Невропатолог Арыстанова А.Н.',
          cab: 217
        }, {
          name: 'Процедурный кабинет',
          cab: 218
        }, {
          name: 'ЗОЖ',
          cab: 220
        }, {
          name: 'Инфекционист Байтлеуова Б.М.',
          cab: 221
        }, {
          name: 'ЛОР Сагинов С.К.',
          cab: 222
        }, {
          name: 'Қабылдау бөлмесі',
          cab: 223
        }, {
          name: 'Орынбасар Камысбаева К.У.',
          cab: 224
        }, {
          name: 'Бухгалтерия',
          cab: 225
        }, {
          name: 'Бас бухгалтер Жумабаева Л.Б.',
          cab: 227
        }, {
          name: 'Статистика',
          cab: 228
        }, {
          name: '№6 Участковый терапевт(УТ) Горина Э.В.',
          cab: 229
        }, {
          name: '№5 УТ Койшекенова Г.Ж.-№3 УТ Шадина Ш.Қ.',
          cab: 230
        }, {
          name: 'ЭКГ Имангалиева Г.Д.',
          cab: 231
        }, {
          name: 'Бөлім меңгерушісі Шинтасова Г.С.-Терапевт Нарбекова Ж.К.',
          cab: 232
        }, {
          name: 'Гинеколог',
          cab: 233
        }, {
          name: 'Т.О. Регистратура',
          cab: 234
        }, {
          name: 'Мәжіліс залы',
          cab: 235
        }, {
          name: 'Екпелердің алдын алу кабинеті',
          cab: 236
        }, {
          name: 'Ем шара кабинеті',
          cab: 237
        }, {
          name: 'ЛОР Алдырзина З.Е.-Детский ЛОР Исентаева Г.Ш.',
          cab: 238
        }, {
          name: 'Окулист Мамбетжанова А.К.-Детский Окулист Санатова А.Е.',
          cab: 239
        }, {
          name: 'Детский хирург Даулетбаева А.Д.',
          cab: 240
        }, {
          name: 'Дені сау балалар кабинеті Беркутбаева Б.Т.',
          cab: 241
        }, {
          name: 'Детский кардиолог Абдуллаева З.Т.',
          cab: 242
        }, {
          name: '№10/11 Аймақтық дәрігері Султамуратова Г.И, Спивак И.Г.',
          cab: 243
        }, {
          name: 'Вакцина сақтайтын қойма',
          cab: 244
        }, {
          name: 'Мектепке дейінгі бөлім меңгерушісі, Врач иммунолог',
          cab: 245
        }, {
          name: 'ЖТД Медетова Ш.Ж, Булекбаева С.К.',
          cab: 246
        }, {
          name: '№3 Бөлім меңгерушісі Фаруздинова Г.В.',
          cab: 247
        }, {
          name: '№22 ЖТД Избасова А.О, №14 ЖТД Нугыметова Г.М.',
          cab: 248
        }, {
          name: 'Бөлім меңгерушісі Жумагалиев Б.М. - Эндокринолог',
          cab: 249
        }, {
          name: '№1 ЖТД Жанамина М.М, №4 ЖТД Жолдыбаева Ш.С.',
          cab: 250
        }, {
          name: 'Оральный регистратура, пункт вептолинизации',
          cab: 251
        }, {
          name: 'Детский невропатолог Кенжегарина Р.Ж.',
          cab: 252
        }, {
          name: 'Әйелдер дәретханасы',
          cab: 'wcw'
        }
      ];
      $scope.map = {
        img: []
      };
      for (_i = 0, _len = list.length; _i < _len; _i++) {
        m = list[_i];
        $scope.map.img['m' + m.cab] = false;
      }
      tmp = angular.copy(list);
      $scope.menuoneleft = tmp.splice(0, 22);
      $scope.menuoneright = tmp.splice(0, 21);
      $scope.menutwoleft = tmp.splice(0, 26);
      $scope.menutworight = tmp.splice(0, 26);
      $scope.cab = function(cab) {
        var _j, _len1;
        for (_j = 0, _len1 = list.length; _j < _len1; _j++) {
          m = list[_j];
          $scope.map.img['m' + m.cab] = false;
        }
        return $scope.map.img['m' + cab] = true;
      };
      if (list.length > 0) {
        $scope.cab(list[0].cab);
      }
      $scope.showFloor = function(floor) {
        $scope.floor = floor;
        if (floor === 1) {
          return $scope.cab($scope.menuoneleft[0].cab);
        } else {
          return $scope.cab($scope.menutwoleft[0].cab);
        }
      };
      return $scope.home = function() {
        return $state.transitionTo('home');
      };
    }
  ]);

}).call(this);
