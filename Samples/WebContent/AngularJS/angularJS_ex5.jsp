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
	<div ng-app="myApp" ng-controller="personCtrl">
	
		First Name: <input type="text" ng-model="firstName"><br>
		Last Name: <input type="text" ng-model="lastName"><br>
		<br>
		Full Name: {{fullName()}}
	
	</div>
	
	<script>
		var app = angular.module('myApp', []);
		app.controller('personCtrl', function($scope) {
		    $scope.firstName = "John";
		    $scope.lastName = "Doe";
		    $scope.fullName = function() {
		        return $scope.firstName + " " + $scope.lastName;
		    };
		});
	</script>
</body>
</html>