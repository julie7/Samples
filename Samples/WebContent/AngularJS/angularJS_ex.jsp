<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<h1>안녕하세요</h1>
	
	<div ng-app="myApp" ng-controller="myCtrl">
 
		{{ firstName + " " + lastName }}
	
	</div>
		
	<script>
		var app = angular.module("myApp", []);
		app.controller("myCtrl", function($scope) {
		    $scope.firstName = "John";
		    $scope.lastName = "Doe";
		});

	</script>
	
</body>
</html>