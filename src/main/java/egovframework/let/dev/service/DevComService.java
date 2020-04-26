package egovframework.let.dev.service;

import java.io.InputStream;
import java.util.List;

/**
 *
 * 모듈개발 서비스 인터페이스 클래스를 정의한다
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
public interface DevComService {

	/**
	 * 엑셀파일을 등록한다.
	 * @param DevTable
	 * @throws Exception
	 */
	void insertExcelDevCom(InputStream file, DevComVO devCom) throws Exception;
	
	/**
	 * 테이블 데이터를 등록한다.
	 * @param DevTable
	 * @throws Exception
	 */
	void insertDevCom(DevComVO devCom) throws Exception;
	
	/**
	 * 테이블 데이터를 삭제한다.
	 * @param DevTable
	 * @throws Exception
	 */
	void deleteDevCom(DevComVO devCom) throws Exception;

	/**
	 * 테이블 데이터를 조회한다.
	 * @param DevTable
	 * @throws Exception
	 */
	List<?> selectDevCom(DevComVO devCom) throws Exception;
}
