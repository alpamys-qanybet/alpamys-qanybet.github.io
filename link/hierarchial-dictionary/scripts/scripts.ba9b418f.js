"use strict";angular.module("testapp3App",["ngAnimate","ngCookies","ngResource","ngRoute","ngSanitize","ngTouch"]).config(["$routeProvider",function(a){a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl",controllerAs:"main"}).when("/about",{templateUrl:"views/about.html",controller:"AboutCtrl",controllerAs:"about"}).when("/dictionary",{templateUrl:"views/dictionary.html",controller:"DictionaryCtrl"}).otherwise({redirectTo:"/"})}]),function(){angular.module("testapp3App").service("$api",["$rootScope","$http",function(a,b){return this.data={url:"json/",list:function(a,c){return b.get(this.url+a+".json").success(function(a){return c(a)})}},a.$api=this}])}.call(this),function(){angular.module("testapp3App").service("$dictionary",["$rootScope","$api",function(a,b){var c,d,e,f,g;return g=["regions","product"],this.types=function(){return g},f={menu:[]},d=function(a,b){return console.log("dictionary fetch type "+a+" id "+b),b?(console.log("hierarchyId"),f.menu["t"+a]["p"+b]):(console.log("root"),f.menu["t"+a].pnull)},c=function(a,b,d){var e,g,h,i,j,k,l;if(l="line",a.hasOwnProperty("list")&&a.list.length>0&&(l="hierarchy"),i={id:a.id,type:l,name:a.name.kz,parent:b},null!=f.menu["t"+d]["p"+b]?f.menu["t"+d]["p"+b].push(angular.copy(i)):(f.menu["t"+d]["p"+b]=[],f.menu["t"+d]["p"+b].push(angular.copy(i))),"hierarchy"===l){for(j=a.list,k=[],e=0,g=j.length;g>e;e++)h=j[e],k.push(c(h,a.id,d));return k}},e=function(a){var d;return d=g[a],f.menu["t"+d]=[],b.data.list(d,function(b){var f,h,i;for(console.log("dictionary api type "+d),console.log(b),f=0,h=b.length;h>f;f++)i=b[f],c(i,null,d);return++a<g.length?e(a):void 0})},e(0),this.root=function(a,b){return console.log(f.menu),b(d(a))},this.children=function(a,b,c){return c(d(a,b))},this.load=function(){return console.log("dictionary load")},a.$dictionary=this}])}.call(this),angular.module("testapp3App").controller("MainCtrl",function(){this.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}),angular.module("testapp3App").controller("AboutCtrl",function(){this.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}),function(){angular.module("testapp3App").controller("DictionaryCtrl",["$scope","$dictionary","$timeout",function(a,b,c){var d,e,f;return b.load(),a.breadcrumbs=[],f={id:"root",name:"Негізгі бет"},a.breadcrumbs.push(f),a.menu=[],e=function(){return a.breadcrumbs=[],f={id:"root",name:"Негізгі бет"},a.breadcrumbs.push(f)},d=function(c){return c?b.children("regions",c,function(b){return a.menu=b}):b.root("regions",function(b){return a.menu=b})},a.select=function(b){return a.breadcrumbs.push(angular.copy(b)),d(b.id)},a.go=function(b){var c,f,g,h,i;if("root"===b.id)return e(),d();for(h=[],i=a.breadcrumbs,f=0,g=i.length;g>f&&(c=i[f],h.push(c),c.id!==b.id);f++);return a.breadcrumbs=h,d(b.id)},c(function(){return d()},1000)}])}.call(this),angular.module("testapp3App").run(["$templateCache",function(a){a.put("views/about.html","<p>This is the about view.</p>"),a.put("views/dictionary.html",'<div class="schedule"> <div class="row breadcrubms" ng-show="breadcrumbs.length > 1"> <ul id="breadcrumb"> <li ng-repeat="b in breadcrumbs"> <a ng-click="go(b)"> <span>{{b.name}}</span> </a> </li> </ul> </div> <div class="row menu-row"> <div ng-repeat="item in menu track by $index" class="menu-list"> <a ng-click="select(item)"> <div class="menu-item"> <div class="mybtn">{{item.name}}</div> </div> </a> </div> <div ng-if="menu.length == 0" class="menu-list"> Empty </div> </div> </div>'),a.put("views/main.html",'<div class="jumbotron"> <h1>\'Allo, \'Allo!</h1> <p class="lead"> <img src="images/yeoman.8cb970fb.png" alt="I\'m Yeoman"><br> Always a pleasure scaffolding your apps. </p> <p><a class="btn btn-lg btn-success" ng-href="#/">Splendid!<span class="glyphicon glyphicon-ok"></span></a></p> </div> <div class="row marketing"> <h4>HTML5 Boilerplate</h4> <p> HTML5 Boilerplate is a professional front-end template for building fast, robust, and adaptable web apps or sites. </p> <h4>Angular</h4> <p> AngularJS is a toolset for building the framework most suited to your application development. </p> <h4>Karma</h4> <p>Spectacular Test Runner for JavaScript.</p> </div>')}]);