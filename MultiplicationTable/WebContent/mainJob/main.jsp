<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단을 외우자</title>
<style>

	h1 {
		font-size: 50px;
		text-align: center;
		color: rgb(160,160,160);
	}
	
	.startbutton {
		border: 10px solid rgb(160,160,160);
		background-color: black;
		color:white;
		font-size: 100px;
		padding: 10px 20px;
		border-radius: 20px;
	}
	
	.startbutton:hover {
		background-color: rgb(255,243,26);
		transition: 0.8s;
		cursor: pointer;
	}
	
	.buttonsolid {
		display: flex;
		justify-content: center;
		margin-top: 200px;
	}
	
	.userform {
		display: flex;
		justify-content: center;
		margin-top: 80px;
	}
	
	.userinput {
		border: 5px solid rgb(160,160,160); 
		width: 150px;
		font-size: 60px;
		text-align: center;
		padding: 15px 25px;
		color:rgb(160,160,160);
		caret-color: rgb(160,160,160);
	}
	
	input:focus {
		outline: none;
	}
	
	

	.timer {
    background: -webkit-linear-gradient(left, skyBlue 50%, #eee 50%);
    /* Foreground color, Background colour */
    border-radius: 100%;
    height: 300px;
    /* Height and width */
    position: relative;
    width: 300px;
    /* Height and width */
    animation-name: time;
    animation-duration: 3s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    margin: 0 auto;
}
.mask {
    border-radius: 100% 0 0 100% / 50% 0 0 50%;
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 50%;
   
    animation-name: mask;
    animation-duration: 3s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    /* Animation time and number of steps (halved) */
    -webkit-transform-origin: 100% 50%;
}
@-webkit-keyframes time {
    100% {
        -webkit-transform: rotate(360deg);
    }
}
@-webkit-keyframes mask {
    0% {
        background: #eee;
        /* Background colour */
        -webkit-transform: rotate(0deg);
    }
    50% {
        background: #eee;
        /* Background colour */
        -webkit-transform: rotate(-180deg);
    }
    50.01% {
        background: skyBlue;
        /* Foreground colour */
        -webkit-transform: rotate(0deg);
    }
    100% {
        background: skyBlue;
        /* Foreground colour */
        -webkit-transform: rotate(-180deg);
    }
}
</style>
</head>
<body>
	<h1>구구단을 풀어 볼까요?</h1>

