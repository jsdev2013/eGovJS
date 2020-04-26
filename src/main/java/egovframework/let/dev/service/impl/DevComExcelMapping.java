package egovframework.let.dev.service.impl;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import egovframework.let.dev.service.DevComVO;
import egovframework.rte.fdl.excel.EgovExcelMapping;
import egovframework.rte.fdl.excel.util.EgovExcelUtil;

/**
*
* Excel 매핑 클래스
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


public class DevComExcelMapping extends EgovExcelMapping {
	/**
	 * 엑셀파일 맵핑
	 */
	@Override
	public Object mappingColumn(Row row) {
		Cell cell0 = row.getCell((short) 0);
    	Cell cell1 = row.getCell((short) 1);
    	Cell cell2 = row.getCell((short) 2);
    	Cell cell3 = row.getCell((short) 3);
    	Cell cell4 = row.getCell((short) 4);
    	Cell cell5 = row.getCell((short) 5);
    	Cell cell6 = row.getCell((short) 6);
    	Cell cell7 = row.getCell((short) 7);
    	Cell cell8 = row.getCell((short) 8);
    	Cell cell9 = row.getCell((short) 9);

    	DevComVO vo = new DevComVO();

		vo.setNum01          (Integer.parseInt(EgovExcelUtil.getValue(cell0)));
		vo.setNum02          (Integer.parseInt(EgovExcelUtil.getValue(cell1)));
		vo.setNum03          (Integer.parseInt(EgovExcelUtil.getValue(cell2)));
		vo.setNum04          (Integer.parseInt(EgovExcelUtil.getValue(cell3)));
		vo.setNum05          (Integer.parseInt(EgovExcelUtil.getValue(cell4)));
		
		vo.setTxt01          (EgovExcelUtil.getValue(cell5));
		vo.setTxt02          (EgovExcelUtil.getValue(cell6));
		vo.setTxt03          (EgovExcelUtil.getValue(cell7));
		vo.setTxt04          (EgovExcelUtil.getValue(cell8));
		vo.setTxt05          (EgovExcelUtil.getValue(cell9));

		return vo;
	}
}
