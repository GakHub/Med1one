package kr.or.ddit.sales.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.employee.service.EmployeeService;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.newfile.service.NewFileService;
import kr.or.ddit.newfile.vo.NewFileVO;
import kr.or.ddit.sales.service.SalesService;
import kr.or.ddit.sales.vo.SalesVO;

@Controller
@RequestMapping("/sales")
public class SalesMainController {

	@Inject
	private NewFileService fileService;

	@Inject
	private SalesService salesService;

	@Inject
	private EmployeeService empService;
	
	
	   //메인페이지
		@GetMapping("newFileList.do")
		public String newFileMainPage() {
			return "sales/newFileList";
		}

		//등록한 엑셀자료 목록(메인)
		@GetMapping(value = "allFileList.do", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public List<NewFileVO> newFileList() {

			List<NewFileVO> fileList = fileService.retrievNewFileMain();
			return fileList;
		}

		//엑셀자료 선택 시 자료 상세조회 출력
		@GetMapping(value = "newFileInfo.do", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public List<NewFileVO> newFileInfo(@RequestParam(name = "fileTitle") String fileTitle) {
			List<NewFileVO> fileList = fileService.retrieveNewFile(fileTitle);
			return fileList;
		}

		
		//엑셀 자료 삭제
		@GetMapping(value = "deleteFile.do", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public boolean deleteFile(@RequestParam(name = "fileTitle") String fileTitle, Model model
		) {
			boolean deleteFile = fileService.removeFile(fileTitle);
			return deleteFile;
		}

	
	
	//엑셀 파일 업로드
	@RequestMapping(value = "newFileUploadExcel.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String newUploadExcel(@RequestParam("file") MultipartFile file, @RequestParam("empNo") String empNo,
			@RequestParam("fileTitle") String fileTitle, Model model) throws IOException {

		String result;
		
		// 업로드한 엑셀 파일 읽기
		Workbook workbook = new XSSFWorkbook(file.getInputStream());
		Sheet sheet = workbook.getSheetAt(0); // 첫 번째 시트 선택

		List<NewFileVO> newFiles = new ArrayList<>();

		// 첫 번째 행을 기준으로 컬럼의 크기 가져오기
		Row headerRow = sheet.getRow(0);
		int numColumns = headerRow.getLastCellNum();
		
		// 데이터베이스에 저장할 객체 생성 및 설정
		for (Row row : sheet) {
			NewFileVO newFile = new NewFileVO();
			newFile.setEmpNo(empNo);
			newFile.setFileTitle(fileTitle);

			for (int i = 0; i < numColumns; i++) {

				Cell cell = row.getCell(i);
				String cellValue = "";

				//문자열, 정수, 날짜 타입 데이터 처리를 위한 코드
				if (cell != null) {
					switch (cell.getCellType()) {
					case STRING:
						cellValue = cell.getStringCellValue();
						break;
					case NUMERIC:
						if (DateUtil.isCellDateFormatted(cell)) {
						} else {
							cellValue = String.format("%.0f", cell.getNumericCellValue()); //정수타입은 소수점 안보이도록 처리
//							cellValue = String.valueOf(cell.getNumericCellValue()); //정수타입에 소수점 첫째자리까지 보이는 코드
						}
						break;
					// 이외의 데이터 유형에 대한 처리가 필요할 경우 이곳에 추가
					default:
						break;
					}
				}

				switch (i) {
				case 0:
					newFile.setFileCol1(cellValue);
					break;
				case 1:
					newFile.setFileCol2(cellValue);
					break;
				case 2:
					newFile.setFileCol3(cellValue);
					break;
				case 3:
					newFile.setFileCol4(cellValue);
					break;
				case 4:
					newFile.setFileCol5(cellValue);
					break;
				case 5:
					newFile.setFileCol6(cellValue);
					break;
				case 6:
					newFile.setFileCol7(cellValue);
					break;
				case 7:
					newFile.setFileCol8(cellValue);
					break;
				case 8:
					newFile.setFileCol9(cellValue);
					break;
				case 9:
					newFile.setFileCol10(cellValue);
					break;
				case 10:
					newFile.setFileCol11(cellValue);
					break;
				default:
					// 기타 필드 설정
					break;
				}// switch
			} // for문
			
			newFiles.add(newFile);
			// 데이터베이스에 저장
			boolean fileInput = fileService.createNewFile(newFile);

		} // for문

		if (newFiles.size() > 0) {
			result = "success";
		} else {
			result = "fail";
		}
		return result;

	} 

	
	
	//자료 수정
	@PostMapping(value = "updateFile.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, Object> updateFile(@RequestBody List<NewFileVO> fileList

	) {
		Map<String, Object> result = new HashedMap<>();
		boolean allSuccess = true;
		boolean success;


		for (NewFileVO file : fileList) {

			NewFileVO updateFile = new NewFileVO();

			updateFile.setNewFileId(file.getNewFileId());
			updateFile.setFileTitle(file.getFileTitle());
			updateFile.setFileCol1(file.getFileCol1());
			updateFile.setFileCol2(file.getFileCol2());
			updateFile.setFileCol3(file.getFileCol3());
			updateFile.setFileCol4(file.getFileCol4());
			updateFile.setFileCol5(file.getFileCol5());
			updateFile.setFileCol6(file.getFileCol6());
			updateFile.setFileCol7(file.getFileCol7());
			updateFile.setFileCol8(file.getFileCol8());
			updateFile.setFileCol9(file.getFileCol9());
			updateFile.setFileCol10(file.getFileCol10());
			updateFile.setFileCol11(file.getFileCol11());
			success = fileService.modifyFile(updateFile);

			if (!success) {
				allSuccess = false;
				break;
			}

		} // for문

		if (allSuccess) {
			result.put("success", allSuccess);
		}

		return result;
	}

	
	//선택한 자료 엑셀 다운로드
	@RequestMapping("selectFileDownload.do")
	public void selectFileDownloadExcel(
			@RequestParam(name = "fileTitle") String fileTitle
			, HttpServletResponse response) throws IOException {
		List<NewFileVO> selectFileList = fileService.retrieveNewFile(fileTitle);

		Workbook workbook = new XSSFWorkbook(); // .xlsx format
        Sheet sheet = workbook.createSheet("selectFile");
        
        int rowNum = 0;
        for (NewFileVO data : selectFileList) {
            Row row = sheet.createRow(rowNum++);
            row.createCell(0).setCellValue(data.getFileCol1()); // Set appropriate data from NewFileVO
            row.createCell(1).setCellValue(data.getFileCol2());
            row.createCell(2).setCellValue(data.getFileCol3());
            row.createCell(3).setCellValue(data.getFileCol4());
            row.createCell(4).setCellValue(data.getFileCol5());
            row.createCell(5).setCellValue(data.getFileCol6());
            row.createCell(6).setCellValue(data.getFileCol7());
            row.createCell(7).setCellValue(data.getFileCol8());
            row.createCell(8).setCellValue(data.getFileCol9());
            row.createCell(9).setCellValue(data.getFileCol10());
            row.createCell(10).setCellValue(data.getFileCol11());
        }
        
    	// Set content type and headers for Excel download
		response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
		response.setHeader("Content-Disposition", "attachment; filename=MyDownloadFile.xlsx");

		// Write Excel data to response
		workbook.write(response.getOutputStream());
		workbook.close();
    }
	
	
	//주요자료 조회, 다운로드 페이지
	@RequestMapping("salesMain.do")
	public void salesMain(

			Model model) {

		List<EmployeeVO> empList = empService.retrieveEmpList();// 전체직원
		List<EmployeeVO> deptEmpList = empService.retrieveDeptEmp(); // 부서별 직원수
		List<SalesVO> salesList = salesService.retrieveSales();// 전체 매출 리스트

		// Calculate total of freeEmpCount
		model.addAttribute("salesList", salesList);
		model.addAttribute("deptEmpList", deptEmpList);
		model.addAttribute("empList", empList);

	}

	@RequestMapping("salesDownloadExcel.do")
	public void salesDownloadExcel(HttpServletResponse response) throws IOException {
		List<SalesVO> salesList = salesService.retrieveSales();// 전체 매출 리스트

		Workbook workbook = new XSSFWorkbook(); // Use XSSFWorkbook for .xlsx format
		Sheet sheet = workbook.createSheet("salesList");

		// Create header row
		Row headerRow = sheet.createRow(0);
		headerRow.createCell(0).setCellValue("NO");
		headerRow.createCell(1).setCellValue("부서코드");
		headerRow.createCell(2).setCellValue("부서명");
		headerRow.createCell(3).setCellValue("연");
		headerRow.createCell(4).setCellValue("월");
		headerRow.createCell(5).setCellValue("매출액(백만원)");
		headerRow.createCell(6).setCellValue("외래환자수");
		headerRow.createCell(7).setCellValue("입원환자수");

		// Create data rows
		int rowNum = 1;

		for (SalesVO data : salesList) {
			Row dataRow = sheet.createRow(rowNum++);
			dataRow.createCell(0).setCellValue(data.getRnum());
			dataRow.createCell(1).setCellValue(data.getSalesDeptCode());
			dataRow.createCell(2).setCellValue(data.getDeptNm());
			dataRow.createCell(3).setCellValue(data.getSalesYear());
			dataRow.createCell(4).setCellValue(data.getSalesMonth());
			dataRow.createCell(5).setCellValue(data.getDeptAmount());
			dataRow.createCell(6).setCellValue(data.getClinicCustomer());
			dataRow.createCell(7).setCellValue(data.getHospitalCustomer());

		}

		// Set content type and headers for Excel download
		response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
		response.setHeader("Content-Disposition", "attachment; filename=salesList.xlsx");

		// Write Excel data to response
		workbook.write(response.getOutputStream());
		workbook.close();
	}

	@RequestMapping("deptDownloadExcel.do")
	public void deptDownloadExcel(HttpServletResponse response) throws IOException {
		List<EmployeeVO> deptList = empService.retrieveDeptEmp(); // 부서별 직원수

		Workbook workbook = new XSSFWorkbook(); // Use XSSFWorkbook for .xlsx format
		Sheet sheet = workbook.createSheet("deptList");

		// Create header row
		Row headerRow = sheet.createRow(0);
		headerRow.createCell(0).setCellValue("NO");
		headerRow.createCell(1).setCellValue("부서명");
		headerRow.createCell(2).setCellValue("직원수");

		// Create data rows
		int rowNum = 1;

		for (EmployeeVO data : deptList) {
			Row dataRow = sheet.createRow(rowNum++);
			dataRow.createCell(0).setCellValue(data.getRnum());
			dataRow.createCell(1).setCellValue(data.getDeptNm());
			dataRow.createCell(2).setCellValue(data.getEmpCount());
		}

		// Set content type and headers for Excel download
		response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
		response.setHeader("Content-Disposition", "attachment; filename=deptList.xlsx");

		// Write Excel data to response
		workbook.write(response.getOutputStream());
		workbook.close();
	}

	@RequestMapping("empDownloadExcel.do")
	public void empDownloadExcel(HttpServletResponse response) throws IOException {
		List<EmployeeVO> empList = empService.retrieveEmpList();// 전체직원리스트

		Workbook workbook = new XSSFWorkbook(); // Use XSSFWorkbook for .xlsx format
		Sheet sheet = workbook.createSheet("empList");

		// 헤더 row생성
		Row headerRow = sheet.createRow(0);
		headerRow.createCell(0).setCellValue("NO");
		headerRow.createCell(1).setCellValue("사원번호");
		headerRow.createCell(2).setCellValue("부서명");
		headerRow.createCell(3).setCellValue("직원명");
		headerRow.createCell(4).setCellValue("연락처");
		headerRow.createCell(5).setCellValue("생년월일");
		headerRow.createCell(6).setCellValue("이메일");
		headerRow.createCell(7).setCellValue("주소");
		headerRow.createCell(8).setCellValue("상세주소");
		headerRow.createCell(9).setCellValue("우편번호");
		headerRow.createCell(10).setCellValue("입사일자");
		headerRow.createCell(11).setCellValue("승인여부");
		headerRow.createCell(12).setCellValue("비고");

		// row 생성
		int rowNum = 1;

		for (EmployeeVO data : empList) {
			Row dataRow = sheet.createRow(rowNum++);
			dataRow.createCell(0).setCellValue(data.getRnum());
			dataRow.createCell(1).setCellValue(data.getEmpNo());
			dataRow.createCell(2).setCellValue(data.getDeptNm());
			dataRow.createCell(3).setCellValue(data.getEmpNm());
			dataRow.createCell(4).setCellValue(data.getEmpTelno());
			dataRow.createCell(5).setCellValue(data.getEmpBirth());
			dataRow.createCell(6).setCellValue(data.getEmpEmail());
			dataRow.createCell(7).setCellValue(data.getEmpAddr1());
			dataRow.createCell(8).setCellValue(data.getEmpAddr2());
			dataRow.createCell(9).setCellValue(data.getEmpZipcode());
			dataRow.createCell(10).setCellValue(data.getJncmpYmd());
			dataRow.createCell(11).setCellValue("Y");
			dataRow.createCell(12).setCellValue(data.getEmpRole());
		}

		// content type 설정, 엑셀 다운로드 header 설정
		response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
		response.setHeader("Content-Disposition", "attachment; filename=empList.xlsx");

		// 엑셀데이터 출력
		workbook.write(response.getOutputStream());
		workbook.close();
	}

	@RequestMapping(value = "salesUploadExcel.do", method = RequestMethod.POST)
	public String uploadExcel(@RequestParam("file") MultipartFile file, Model model) {
		List<SalesVO> salesList = new ArrayList<>();

		try {
			Workbook workbook = new XSSFWorkbook(file.getInputStream());
			Sheet sheet = workbook.getSheetAt(0); // 첫번째 시트

			// 두번째 row부터 시작 (index 1)
			for (int rowIndex = 1; rowIndex <= sheet.getLastRowNum(); rowIndex++) {
				Row row = sheet.getRow(rowIndex);
				if (row == null) {
					// Handle null row if needed
					continue;
				}

				SalesVO data = new SalesVO();

				Cell salesRnumCell = row.getCell(0);
				if (salesRnumCell != null) {
					data.setRnum((long) salesRnumCell.getNumericCellValue());
				}

				Cell salesDeptCodeCell = row.getCell(1);
				if (salesDeptCodeCell != null) {
					data.setSalesDeptCode(salesDeptCodeCell.getStringCellValue());
				}

				Cell deptNmCell = row.getCell(2);
				if (deptNmCell != null) {
					data.setDeptNm(deptNmCell.getStringCellValue());
				}

				Cell salesYearCell = row.getCell(3);
				if (salesYearCell != null) {
					data.setSalesYear(salesYearCell.getStringCellValue());
				}

				Cell salesMonthCell = row.getCell(4);
				if (salesMonthCell != null) {
					data.setSalesMonth(salesMonthCell.getStringCellValue());
				}

				Cell deptAmountCell = row.getCell(5);
				if (deptAmountCell != null) {
					data.setDeptAmount((long) deptAmountCell.getNumericCellValue());
				}

				Cell clinicCustomerCell = row.getCell(6);
				if (clinicCustomerCell != null) {
					data.setClinicCustomer((int) clinicCustomerCell.getNumericCellValue());
				}

				Cell hospitalCustomerCell = row.getCell(7);
				if (hospitalCustomerCell != null) {
					data.setHospitalCustomer((int) hospitalCustomerCell.getNumericCellValue());
				}


				salesList.add(data);
			}
		} catch (IOException e) {
			e.printStackTrace();
			
		}

		model.addAttribute("salesList", salesList);
		return "sales/salesUpload"; 
	}

	
} 
