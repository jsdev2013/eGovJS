<%--
  Class Name : EgovIncHeader.jsp
  Description : 화면상단 Header (include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="egovframework.com.cmm.LoginVO" %>
<div id="skipNav" class="invisible">
    <dl>
        <dt>콘텐츠 바로가기</dt>
        <dd><a href="#content">컨텐츠 바로가기</a></dd>
        <dd><a href="#topnavi">메인메뉴 바로가기</a></dd>
        <dd><a href="#leftmenu">좌메뉴 바로가기</a></dd>
    </dl>
</div>
<!-- 행정안전부 로고 및 타이틀 시작 -->
<div id="logoarea">
	<!-- <h1><a href="<c:url value='/'/>uat/uia/actionMain.do"><img src="<c:url value='/'/>images/header/logo.jpg" alt="eGovFramework Learning Site" /></a></h1> -->
	<div id="project_title"><a href="<c:url value='/'/>uat/uia/actionMain.do">
	         <img src="<c:url value='/'/>images/header/eGovVerInfo.png" alt="eGovFramework Learning Site" width="100px" />
			<span class="maintitle">eGovFramework Learning Site</span><span style="font-size:12px"></a></span>
	</div>			
</div>
<div id="LoginStatus">
	  
	  	<%
        LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO");
        if(loginVO == null){
        %>
        <ul style="display:none;">
	  		<li>로그인정보 없음</li>
	  		<li><a href="<c:url value='/uat/uia/egovLoginUsr.do'/>"><img src="<c:url value='/images/leftmenu/login.jpg' />" alt="로그인" /></a></li>
	  		<li>로그인후 사용하십시오</li>
	  	</ul>
	  	<%
        }else{
	  	%>
	  		<fieldset><legend>조건정보 영역</legend>
	            <c:set var="loginName" value="<%= loginVO.getName()%>"/>
	            <ul>
		  	    <li><a href="#LINK" onclick="alert('개인정보 확인 등의 링크 제공'); return false;">
	            <c:out value="${loginName}"/> 님</a></li>
	            <li><a href="<c:url value='/uat/uia/actionLogout.do'/>">
	            <img src="<c:url value='/images/leftmenu/logout.jpg' />" alt="로그아웃" /></a></li>
	            </ul>
            </fieldset>
	  	<%
	  	}
        %>
	
</div>
<!-- <a href="<c:url value='/EgovPageLink.do?link=main/sample_menu/Intro'/>" target="_blank"><img width="20" height="20" src="<c:url value='/images/question.jpg'/>" alt="메뉴구성 설명" title="메뉴구성 설명"></a> -->

<!-- //행정안전부 로고 및 타이틀 끝 -->
