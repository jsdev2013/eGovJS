<%--
  Class Name : EgovMainView.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>eGovFramework Learning Site</title>
<link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css" >
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->

<div id="wrap">
	<!-- header 시작 -->
	<div id="header"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" /></div>
	<%// <div id="topnavi"><c:import url="/sym/mms/EgovMainMenuHead.do" /></div>%>
    <div id="topnavi"><c:import url="/sym/mms/EgovMainMenuHead.do" /></div>
	<!-- //header 끝 -->	
	<!-- container 시작 -->
	<div id="main_container">
		<!-- title 시작 -->
		<div></div>
		<!-- 게시판 시작 -->
		<div id="mainview_wrap">
			<div id="main_leftcontent">
				<!-- main_left 시작 -->
				<!-- //main_left 끝 -->

				<!-- 자료실 시작 -->
				<div class="left_board02">
					<ul>
						 <li><div class="board_title2">자료실
							 	<div class="t2_rightdiv">
									<a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA'/>" onclick="javascript:goMenuPage('1000000');">
									    more+
									</a>
								</div>
							</div>
						 	<c:forEach var="result" items="${notiList}" varStatus="status">
						 	<ul>
						 		<li>
						 			<div class="dot_bl">
						 		    <!-- <a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_CCCCCCCCCCCC'/>">
						 		    <c:out value="${result.nttSj}" />
						 		    </a> -->
							 		    <form name="subForm" method="post" action="<c:url value='/cop/bbs${prefix}/selectBoardArticle.do'/>">
							 		    	<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
					                        <input type="hidden" name="nttId"  value="<c:out value="${result.nttId}"/>" />
					                        <span class="link"><input class="mainview_contentlist" type="submit" value="<c:out value="${result.nttSj}"/>"></span>
							 		     </form>
						 		    </div>
						 		</li>
						 		<li><div class="lcount"><c:out value="${result.frstRegisterPnttm}"/></div></li>
						 	</ul>
						 	</c:forEach>
						 </li>
					</ul>				
				</div>
				<!-- 자료실 끝 -->
			</div>
			<div id="main_rightcontent_wrap">
				<!-- 최신업무공지 시작 -->
				<div id="main_rightcontent">
				</div>	
				<!-- //최신업무공지 끝 -->
			</div>
		</div>
	</div>
	<!-- //게시판 끝 -->
	<!-- footer 시작 -->
	<div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
	<!-- //footer 끝 -->
</div>
<!-- //전체 레이어 끝 -->
</body>
</html>