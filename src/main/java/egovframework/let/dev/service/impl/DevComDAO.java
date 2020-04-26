package egovframework.let.dev.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.let.dev.service.DevComVO;
import egovframework.let.sym.ccm.zip.service.Zip;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

/**
*
* 개발테이블에 대한 데이터 접근 클래스를 정의한다
* @author 이지수
* @since 2019.12.11
* @version 1.0
* @see
*
* <pre>
* << 개정이력(Modification Information) >>
*
*   수정일      수정자           수정내용
*  -------    --------    ---------------------------
*   2019.12.11  이지수          최초 생성
*
* </pre>
*/

@Repository("DevComDAO")
public class DevComDAO extends EgovAbstractDAO {

	/**
	 *데이터 전체를 삭제한다.
	 * @throws Exception
	 */
	public void deleteDevCom(DevComVO devCom) throws Exception {
		delete("DevComDAO.deleteDevCom", devCom);
	}

	/**
	 *데이터 전체를 조회한다.
	 * @throws Exception
	 */
	public List<?> selectDevCom(DevComVO devCom) throws Exception {
		return list("DevComDAO.selectDevCom", devCom);
	}
	
	/**
	 * 데이터를 등록한다.
	 * @throws Exception
	 */
	public void insertDevCom(DevComVO devCom) throws Exception {
        insert("DevComDAO.insertDevCom", devCom);
	}
}
