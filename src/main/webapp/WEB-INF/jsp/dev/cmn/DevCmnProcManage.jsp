<%--
  Class Name : DevCmnExcelManage.jsp 
  Description : 파일업로드다운로드 개발 모듈 
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2019.12.06   이지수       최초 생성
 
    author   : 이지수
    since    : 2019.12.06 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css" >

<title>eGovFramework Learning Site</title>
<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="devComVO" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">


</script>
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
	<div id="container">
		<!-- 좌측메뉴 시작 -->
        <div id="leftmenu"><c:import url="/sym/mms/EgovMainMenuLeft.do" /></div>
        <!-- //좌측메뉴 끝 -->
		<!-- 현재위치 네비게이션 시작 -->
        <div id="content">
			<div id="main_container">
				<!-- title 시작 -->
				<div class="devTitle">저장 프로시저 실행</div>
				<!-- 메인 시작 -->
				<div id="mainview_wrap">
				
				<form:form commandName="devCom" action="${pageContext.request.contextPath}/dev/cmn/DevCmnInsert.do" name="devCom" method="post" >
					<div class="modify_user">
						<table width="50%">
							<tr>
								<th width="5%" class="required_text" scope="row" nowrap >num01</th>
								<th width="5%" class="required_text" scope="row" nowrap >num02</th>
								<th width="5%" class="required_text" scope="row" nowrap >num03</th>
								<th width="5%" class="required_text" scope="row" nowrap >num04</th>
								<th width="5%" class="required_text" scope="row" nowrap >num05</th>
								<th width="10%" class="required_text" scope="row" nowrap >txt01</th>
								<th width="10%" class="required_text" scope="row" nowrap >txt02</th>
								<th width="10%" class="required_text" scope="row" nowrap >txt03</th>
								<th width="10%" class="required_text" scope="row" nowrap >txt04</th>
								<th width="10%" class="required_text" scope="row" nowrap >txt05</th>
							</tr>
							<tr>
								<td nowrap="nowrap">
								    <form:input path="num01" id="num01" title="숫자1" size="7" maxlength="10" />
					                <form:errors path="num01" cssClass="error" />
								</td>
								<td nowrap="nowrap">
									<form:input path="num02" id="num02" title="숫자2" size="7" maxlength="10" />
					                <form:errors path="num02" cssClass="error" />
								</td>
								<td nowrap="nowrap">
									<form:input path="num03" id="num03" title="숫자3" size="7" maxlength="10" />
					                <form:errors path="num03" cssClass="error" />
								</td>
								<td nowrap="nowrap">
									<form:input path="num04" id="num04" title="숫자4" size="7" maxlength="10" />
					                <form:errors path="num04" cssClass="error" />
								</td>
								<td nowrap="nowrap">
									<form:input path="num05" id="num05" title="숫자5" size="7" maxlength="10" />
					                <form:errors path="num05" cssClass="error" />
								</td>
								<td nowrap="nowrap">
									<form:input path="txt01" id="txt01" title="문자1" size="10" maxlength="45" />
					                <form:errors path="txt01" cssClass="error" />
								</td>
								<td nowrap="nowrap">
									<form:input path="txt02" id="txt02" title="문자2" size="10" maxlength="45" />
					                <form:errors path="txt02" cssClass="error" />
								</td>
								<td nowrap="nowrap">
									<form:input path="txt03" id="txt03" title="문자3" size="10" maxlength="45" />
					                <form:errors path="txt03" cssClass="error" />
								</td>
								<td nowrap="nowrap">
									<form:input path="txt04" id="txt04" title="문자4" size="10" maxlength="45" />
					                <form:errors path="txt04" cssClass="error" />
								</td>
								<td nowrap="nowrap">
									<form:input path="txt05" id="txt05" title="문자5" size="10" maxlength="45" />
					                <form:errors path="txt05" cssClass="error" />
								</td>
							</tr>
						</table>
					</div>
					<!-- 버튼 시작(상세지정 style로 div에 지정) -->
                    <div class="buttons" style="padding-top:10px;padding-bottom:10px;">

                        <!-- 목록/저장버튼  -->
                        <table border="0" cellspacing="0" cellpadding="0" align="center">
                        <tr> 
                          <td>
                            <a href="#LINK" onclick="JavaScript:fnInsert(); return fallse;"><spring:message code="button.save" /></a> 
                          </td>   
                        </tr>
                        </table>
                    </div>
                    <!-- 버튼 끝 -->
					
				</form:form>
				
				<div class="devTitle">결과</div>
				
				<!-- 테이블 조회 시작 -->
				<div class="default_tablestyle">
                    <table summary="엑셀 데이터 테이블이다." cellpadding="0" cellspacing="0">
                    <caption>엑셀 데이터 목록</caption>
                    <colgroup>
                    <col width="20%" >
                    <col width="20%" >  
                    <col width="20%" >
                    <col width="20%" >
                    <col width="20%" >
                    <col width="20%" >
                    <col width="20%" >
                    <col width="20%" >  
                    <col width="20%" >
                    <col width="20%" >
                    <col width="20%" >
                    <col width="20%" >
                    </colgroup>
                    <thead>
                    <tr>
                        <th scope="col" nowrap="nowrap">num01</th>
                        <th scope="col" nowrap="nowrap">num02</th>
                        <th scope="col" nowrap="nowrap">num03</th>
                        <th scope="col" nowrap="nowrap">num04</th>
                        <th scope="col" nowrap="nowrap">num05</th>
                        <th scope="col" nowrap="nowrap">txt01</th>
                        <th scope="col" nowrap="nowrap">txt02</th>
                        <th scope="col" nowrap="nowrap">txt03</th>
                        <th scope="col" nowrap="nowrap">txt04</th>
                        <th scope="col" nowrap="nowrap">txt05</th>
                    </tr>
                    </thead>
                    <tbody>                 

                    <c:forEach items="${resultList}" var="resultInfo" varStatus="status">
                    <!-- loop 시작 -->                                
						<tr>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.num01}</td>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.num02}</td>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.num03}</td>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.num04}</td>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.num05}</td>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.txt01}</td>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.txt02}</td>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.txt03}</td>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.txt04}</td>
						    <td class="lt_text3" nowrap="nowrap">${resultInfo.txt05}</td>
						</tr>   
                    </c:forEach>     
                    <c:if test="${fn:length(resultList) == 0}">
                        <tr> 
                            <td colspan=9>
                                <spring:message code="common.nodata.msg" />
                            </td>
                        </tr>                                              
                    </c:if>
                    </tbody>
                    </table>
                </div>
				
				<!-- 테이블 조회 끝 -->	
				
				</div>
			</div>	
		</div>  
        <!-- //content 끝 --> 
	</div>
	<!-- //container 끝 -->
	<!-- footer 시작 -->
	<div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
	<!-- //footer 끝 -->
</div>
<!-- //전체 레이어 끝 -->
</body>
</html>