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
<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_egov_regist_ExcelDev(){
    var varForm              = document.all["Form"];

    // 파일 확장명 확인
    var arrExt      = "xls";
    var arrExt2     = "xlsx";
    var objInput    = varForm.elements["fileNm"];
    var strFilePath = objInput.value;
    var arrTmp      = strFilePath.split(".");
    var strExt      = arrTmp[arrTmp.length-1].toLowerCase();

    if (arrExt != strExt) {
        alert("엑셀 파일을 첨부하지 않았습니다.\n확인후 다시 처리하십시오. ");
        abort;
    } 
    
    varForm.action           = "<c:url value='/dev/cmn/DevCmnExcelRegist.do'/>";
    varForm.submit();

}
/* ********************************************************
 * 양식 다운로드
 ******************************************************** */
function fn_egov_list_ExcelFormDownload(){
	//location.href = "<c:url value='/dev/cmn/DevCmnExcelFormDownload.do'/>";
	// window.open("<c:url value='/dev/cmn/DevCmnExcelFormDownload.do'/>");
	 window.open("<c:url value='/cmm/fms/FileDown.do?atchFileId=FILE_000000000000071&fileSn=0'/>");
}
</script>
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
	<div id="container">
		<!-- 좌측메뉴 시작 -->
        <div id="leftmenu"><c:import url="/sym/mms/EgovMainMenuLeft.do" /></div>
        <!-- //좌측메뉴 끝 -->
		<!-- 현재위치 네비게이션 시작 -->
        <div id="content">
			<div id="main_container">
				<!-- title 시작 -->
				<div class="devTitle">엑셀파일 업로드/다운로드</div>
				<!-- 메인 시작 -->
				<div id="mainview_wrap">
				
				<form name="Form" action="<c:url value='/dev/cmn/DevCmnExcelManage.do'/>" method="post" enctype="multipart/form-data" >
                <input type="submit" id="invisible" class="invisible"/>
                    <div class="modify_user" >
                        <table summary="엑셀파일을 첨부할 수 있는 등록 테이블이다.">
						   <tr>
						    <th width="20%" height="23" class="required_text" scope="row" nowrap ><label for="fileNm">엑셀파일필수</label></th>
						    <td><input name="fileNm" type="file" id="fileNm"/></td>
						  </tr>
                        </table>
                    </div>

                    <!-- 버튼 시작(상세지정 style로 div에 지정) -->
                    <div class="buttons" style="padding-top:10px;padding-bottom:10px;">
                        <!-- 목록/저장버튼  -->
                        <table border="0" cellspacing="0" cellpadding="0" align="center">
                        <tr> 
                          <td width="10"></td>
                          <td>
                            <a href="#noscript" onclick="fn_egov_list_ExcelFormDownload(); return false;">양식 다운로드</a>
                          </td>
                          <td>
                            <a href="#noscript" onclick="fn_egov_regist_ExcelDev(); return false;"><spring:message code="button.save" /></a> 
                          </td>
                        </tr>
                        </table>
                    </div>
                    <!-- 버튼 끝 -->                           

                    <!-- 검색조건 유지 -->
                    <input name="cmd" type="hidden" value="<c:out value='ExcelZipRegist'/>"/>
                    <!-- 검색조건 유지 -->
                </form>
                
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