package kr.or.ddit.employee.fixtures.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.employee.fixtures.service.FixturesReqService;
import kr.or.ddit.employee.fixtures.service.FixturesService;
import kr.or.ddit.employee.fixtures.vo.FixturesDTLVO;
import kr.or.ddit.employee.fixtures.vo.FixturesReqVO;
import kr.or.ddit.employee.fixtures.vo.FixturesVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/fixtures")
@RequiredArgsConstructor
public class FixturesReqController {

	@Inject
	private final FixturesReqService reqService;

	@Inject
	private final FixturesService service;

	// 비품신청
	@GetMapping("fixturesReqInsert.do")
	public String fixturesReqInsert(Model model) {
		return "fixtures/fixturesForm";
	}

	// 비품 신청 목록
	@RequestMapping(value = "selectFixOrdList.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<FixturesReqVO> selectFixOrdList() {
		List<FixturesReqVO> order = service.retrieveFixOrdList();

		return order;
	}

	// 대기상태 update + 재고 update
	@ResponseBody
	@RequestMapping(value = "updateOrderStatus.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public boolean updateFixSttus(@RequestParam("fxtrsCnt")int fxtrsCnt
								,@RequestParam("fxtrsCode")String fxtrsCode
								,@RequestParam("fxtrsOrdCode")String fxtrsOrdCode
			) {
		boolean inv = service.modifyFxtrsInv(fxtrsCnt, fxtrsCode);
		boolean status = service.modifyFixSttus(fxtrsOrdCode);
		boolean success = false;
		
		if(inv==true && status==true) {
			success=true;
		}
		return success;
	}
	
	// 비품 신규등록
	@ResponseBody
	@PostMapping("insertFixtures.do")
	public Map<String, Object> insertFixtures(@RequestBody Map<String, Object> param) {
		String fxtrsCode = (String) param.get("fixCode");
		String fxtrsNm = (String) param.get("fixNm");
		
		int fxtrsInv = Integer.parseInt(String.valueOf(param.get("fixInv")));
		int fxtrsUntpc = Integer.parseInt(String.valueOf(param.get("fixUntpc")));
		String fxtrsMfbiz = (String) param.get("fixMfbiz");
		String fxtrsLclas = (String) param.get("fixLclas");
		
		FixturesVO fixturesVO = new FixturesVO();
		
		fixturesVO.setFxtrsCode(fxtrsCode);
		fixturesVO.setFxtrsNm(fxtrsNm);
		fixturesVO.setFxtrsInv(fxtrsInv);
		fixturesVO.setFxtrsUntpc(fxtrsUntpc);
		fixturesVO.setFxtrsMfbiz(fxtrsMfbiz);
		fixturesVO.setFxtrsLclas(fxtrsLclas);

		int result = service.createFixList(fixturesVO);
		
		if (result >= 1) {
			param.put("result", "success");
		}
		
		return param;
	}
	
	@GetMapping("fixturesListPop.do")
	public String fixturesListPop(Model model, String fxtrsLclas) {
		
		List<FixturesDTLVO> fixDtlList = service.retrieveFixDtlList();
		List<FixturesVO> fixList = service.retrieveFixList(fxtrsLclas);
		List<FixturesReqVO> fixOrdList = service.retrieveFixOrdList();
		model.addAttribute("fixDtlList", fixDtlList);
		model.addAttribute("fixList", fixList);
		model.addAttribute("fixOrdList", fixOrdList);
		
		return "fixtures/pop/fixturesListPop";
	}
	
	
	

}
