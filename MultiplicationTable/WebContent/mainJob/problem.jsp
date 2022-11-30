<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="main.jsp" %>


<h1 style="font-size: 100px;">${danNum } x ${mulNum }</h1>


	
	<div class="timer">
	    <div class="mask"></div>
	</div>
	
	
	
	<div class="userform">
		<form action="checkProblem.jsp">
			<input type="text" name="result" required autocomplete="off" class="userinput">
			<input type="hidden" value="입력">
		</form>
	</div>
		

<script>
  setTimeout('move_page()', 3000); //5초후에 move_page함수실행

  function move_page(){
  location.href="checkProblem.jsp"  // 페이지 이동
  }

</script>






</body>
</html>