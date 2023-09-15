
<script>
	/*     keyfrom : 시작 시간, keyto : 종료 시간, text :일정내용, bg : 배경색, days: 요일
	 <option value="K">CT실</option>sunday
	 <option value="L">MRI실</option>moday
	 <option value="O">임상병리검사실</option>'tuesday',
	 <option value="M">초음파실</option>, 'wednesday'
	 <option value="N">내시경실</option>'thursday
	 <option value="H">일반검사실</option>friday
	 <option value="H">비고</option>saturday

	 <option value="A">호흡기내과</option>sunday
	 <option value="B">소화기내과</option>monday
	 <option value="F">내분비내과</option>tuesday
	 <option value="D">심장내과</option>wednesday
	 <option value="E">감염내과</option>thursday
	 <option value="C">영상의학과</option>friday
	 <option value="G">종합검진센터</option>saturday

	 .bg-red {
	 background: #eb5a46b8;
	 color: #8e3224;
	 border: 2px solid #b95344
	 }

	 .bg-blue {
	 background: #08b7d29e;
	 color: #104a53;
	 border: 2px solid #157786
	 }

	 .bg-purple {
	 background: #a251bfb8;
	 color: #633673;
	 border: 2px solid #a24cc1
	 }

	 .bg-yellow {
	 background: #f0d50794;
	 color: #847927;
	 border: 2px solid #e1c700
	 }

	 .bg-green {
	 background: #61bd4fa1;
	 color: #3c882d;
	 border: 2px solid #61bd4f
	 }
	 [{"resveNum":"RSVT003","resveDate":"20230810","resveTime":"11:00","resveEndtime":"12:00",
	 "resveRegist":[2023,8,21],"patntCode":"PNT0008","fcltyCode":"K","patntNm":"김민수님(PNT0008)",
	 "birth":"8909051","patntTelno":"01012345678","fcltyNm":"sunday","docEmpNm":null,"docEmpNo":null}]

	 */
	

	// 전체조회페이지에서 날짜/진료실 검색 시 날짜 파라미터 변형(2023-08-00 =>20230800)
	$("#allSearchForm").submit(function() {
		var selectedDate = $("#resveDate").val(); // 선택된 날짜 가져오기 (YYYY-MM-DD 형식)

		// 날짜 형식 변환 (YYYYMMDD 형식으로)
		var formattedDate = selectedDate.replace(/-/g, '');
		cosole.log(formattedDate);

		// 변환된 날짜를 파라미터에 설정
		$("#resveDate").val(formattedDate);
	});

	


