package egovframework.let.dev.service.impl;

import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.let.dev.service.DevComVO;
import egovframework.let.dev.service.DevComService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.excel.EgovExcelService;

/**
*
* 개발모듈에 대한 서비스 구현클래스를 정의한다
* @author 이지수
* @since 2019.12.12
* @version 1.0
* @see
*
* <pre>
* << 개정이력(Modification Information) >>
*
*   수정일      수정자           수정내용
*  -------    --------    ---------------------------
*   2019.12.12  이지수          최초 생성
*
* </pre>
*/
@Service("DevComService")
public class DevComServiceImpl extends EgovAbstractServiceImpl implements DevComService {

	@Resource(name="DevComDAO")
    private DevComDAO devComDAO;
	
	@Resource(name = "excelDevComService")
    private EgovExcelService excelDevComService;
	
	@Override
	public void insertExcelDevCom(InputStream file, DevComVO devCom) throws Exception {
		devCom.setWkcd("A");
		devComDAO.deleteDevCom(devCom);
		excelDevComService.uploadExcel("DevComDAO.insertExcelDevCom", file, 1, 5000);
	}

	@Override
	public void deleteDevCom(DevComVO devCom) throws Exception {
		devComDAO.deleteDevCom(devCom);
	}

	@Override
	public List<?> selectDevCom(DevComVO devCom) throws Exception {
		return devComDAO.selectDevCom(devCom);
	}

	@Override
	public void insertDevCom(DevComVO devCom) throws Exception {
		devComDAO.insertDevCom(devCom);
		
	}

}
