package kr.or.ddit.medical.nurse.vo.wrapper;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

import kr.or.ddit.medical.nurse.vo.DoctorDtlVO;
import kr.or.ddit.medical.nurse.vo.DoctorSchdulVO;

public class DoctorSchdulVOWrapper extends FullcalenderEventColor<DoctorDtlVO> {
	
	public DoctorSchdulVOWrapper(DoctorDtlVO adaptee) {
		super(adaptee);
	}

	@Override
	public String getId() {
		return getData().getDocwkCode();
	}
	
	@Override
	public String getTitle() {
		return getData().getDocEmpNm()+" "+getData().getCodeNm();
	}
	
	@Override
	@JsonFormat(shape = Shape.STRING)
	public LocalDate getStart() {
		return LocalDate.parse(getData().getDoctrDate(), DateTimeFormatter.BASIC_ISO_DATE);
		
	}
	
	@Override
	@JsonFormat(shape = Shape.STRING)
	public LocalDate getEnd() {
		return LocalDate.parse(getData().getDoctrDate(), DateTimeFormatter.BASIC_ISO_DATE);
		
	}
	
	@Override
	public String getColor() {
		String color = "Plum";
		String aorp = getData().getCodeNm();
		if(aorp.equals("오전")) {
			color = "pink";
		}else if(aorp.equals("당직")) {
			color = "skyblue";
		}
		return color;
	}

	@Override
	public String getTextColor() {
		return "black";
	}
	
	
}
