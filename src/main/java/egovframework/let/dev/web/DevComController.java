package egovframework.let.dev.web;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.let.dev.service.DevComVO;
import egovframework.let.dev.service.DevComService;
import egovframework.rte.fdl.property.EgovPropertyService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

/**
 * 개발 템플릿 메인 페이지 컨트롤러 클래스
 * @author 이지수
 * @since 2019.12.06
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2019.12.06  이지수            최초 생성
 *
 * </pre>
 */

@Controller
public class DevComController {

	private static final Logger LOGGER = LoggerFactory.getLogger(DevComController.class);
	
	@Resource(name = "DevComService")
	private DevComService devComService;
	
	/** EgovMessageSource */
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
	
	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;
	
	/**
	 * 파일업로드다운로드 화면을 조회한다.
	 * @param 
	 * @param model 화면모델
	 * @return dev/cmn/DevCmnExcelManage
	 * @throws Exception
	 */
	@RequestMapping(value = "/dev/cmn/DevCmnExcelManage.do")
	public String goDevCmnExcelManage(@ModelAttribute("devCom") DevComVO devCom, ModelMap model, HttpServletRequest request) throws Exception {

		devCom.setWkcd("A");
		model.addAttribute("resultList", devComService.selectDevCom(devCom));
			
		return "dev/cmn/DevCmnExcelManage";
	} 
	
	/**
	 * 엑셀파일을 업로드하여 테이블에 등록한다.
	 * @param loginVO
	 * @param request
	 * @param commandMap
	 * @param model
	 * @return "/dev/cmn/DevComExcelRegist"
	 * @throws Exception
	 */	
	@RequestMapping(value = "/dev/cmn/DevCmnExcelRegist.do")
	public String insertExcelDevCom(@ModelAttribute("devCom") DevComVO devCom, final HttpServletRequest request, @RequestParam Map<String, Object> commandMap, Model model) 
			throws Exception {
		
		String sCmd = commandMap.get("cmd") == null ? "" : (String) commandMap.get("cmd");
		if (sCmd.equals("")) {
			return "/dev/cmn/DevCmnExcelManage";
		}
		
		final MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		Iterator<Entry<String, MultipartFile>> itr = files.entrySet().iterator();
		MultipartFile file = null;
		InputStream fis = null;
		while (itr.hasNext()) {
			Entry<String, MultipartFile> entry = itr.next();
			
			try {
				
				file = entry.getValue();
				fis = file.getInputStream();
				devCom.setWkcd("A");
				
				if(!"".equals(file.getOriginalFilename())) {
					if (file.getOriginalFilename().toLowerCase().endsWith(".xls") || file.getOriginalFilename().toLowerCase().endsWith(".xlsx")) {
						
						devComService.insertExcelDevCom(fis, devCom);
						
					} else {
						return "/dev/cmn/DevCmnExcelManage";
					}	
				}
			} finally {
				try {
					if (fis != null) {
						fis.close();
					}
				} catch (IOException ee) {
					LOGGER.debug("{}", ee);
				}
			}
		}
		
		return "forward:/dev/cmn/DevCmnExcelManage.do";
	}
	
	/**
	 * 저장프로시저실행 화면을 조회한다.
	 * @param 
	 * @param model 화면모델
	 * @return /dev/cmn/DevCmnProcManage
	 * @throws Exception
	 */
	@RequestMapping(value = "/dev/cmn/DevCmnProcManage.do")
	public String goDevCmnProcManage(@ModelAttribute("devCom") DevComVO devCom, ModelMap model, HttpServletRequest request) throws Exception {
		
		devCom.setWkcd("B");
		model.addAttribute("resultList", devComService.selectDevCom(devCom));
		
		return "dev/cmn/DevCmnProcManage";
	} 
}






