// Generated by CoffeeScript 1.4.0
(function() {

  angular.module('tmg').controller('GalleryCtrl', [
    '$scope', '$rootScope', '$cookies', '$state', function($scope, $rootScope, $cookies, $state) {
      var counter, list, url;
      console.log('GalleryCtrl');
      $rootScope.current = 'gallery';
      $rootScope.showNav = true;
      url = domainUrl + '/static/img/pk2/';
      list = ['0001.jpg', '0002.jpg', '0003.jpg', '0004.jpg', '0005.jpg', '0006.jpg', '0007.jpg', '0008.jpg', '0009.jpg', '0010.jpg', '0011.jpg', '0012.jpg', '0013.jpg', '0014.jpg', '0015.jpg', '0016.jpg', '0017.jpg', '0018.jpg', '0019.jpg', '0020.jpg', '0021.jpg', '0022.jpg', '0023.jpg', '0024.jpg', '0025.jpg', '0026.jpg', '0027.jpg', '0028.jpg', '0029.jpg', '0030.jpg', '0031.jpg', '0032.jpg', '0033.jpg', '0034.jpg', '0035.jpg', '1432722627_12.jpg', '1432722649_10.jpg', '1432722659_11.jpg', '1432722667_3.png', '1432722669_6.png', '1432722670_1.png', '1432722675_2.png', '1432722679_4.png', '1432722693_7.png', '1432722698_9.png', '1432722703_5.png', '1432722710_8.png'];
      counter = 0;
      $scope.imgsrc = url + list[counter % list.length];
      $scope.prev = function() {
        counter--;
        if (counter === 0) {
          counter = list.length;
        }
        return $scope.imgsrc = url + list[counter % list.length];
      };
      return $scope.next = function() {
        counter++;
        if (counter === list.length) {
          counter = 0;
        }
        return $scope.imgsrc = url + list[counter % list.length];
      };
    }
  ]);

}).call(this);
