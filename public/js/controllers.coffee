app = angular.module('IntroApp', []);
app.controller 'PhoneListCtrl', ($scope, $http) -> 
	url = "http://127.0.0.1:3000/phones/phones.json"
	$http.get(url).success (data) ->
		$scope.phones = data