<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<body>
	<body ng-app="myApp">
	
		<p>The rootScope's favorite color:</p>
		<h1 style="background-color:{{color}}">{{color}}</h1>
	
		<div ng-controller="myCtrl">
		
			<p>The scope of the controller's favorite color:</p>
			<h1 style="background-color:{{color}}">{{color}}</h1>
			
		</div>
		
		<p>The rootScope's favorite color is still:</p>
		<h1 style="background-color:{{color}}">{{color}}</h1>
		
		<script>
			var app = angular.module('myApp', []);
			app.run(function($rootScope) {
			    $rootScope.color = 'pink';
			});
			app.controller('myCtrl', function($scope) {
			    $scope.color = "green";
			});
		</script>
		
		<p>Notice that controller's color variable does not overwrite the rootScope's color value.</p>
</body>
</html>