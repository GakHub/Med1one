package kr.or.ddit.medical.nurse.vo.wrapper;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

import kr.or.ddit.medical.nurse.vo.NurseDtlVO;

public class NurseSchdulVOWrapper extends FullcalenderEventColor<NurseDtlVO>{

	public NurseSchdulVOWrapper(NurseDtlVO adaptee) {
		super(adaptee);
	}

	@Override
	public String getId() {
		return getData().getNurwkCode();
	}

	@Override
	public String getTitle() {
		return getData().getNurEmpNm()+" "+getData().getCodeNm();
	}

	@Override
	@JsonFormat(shape = Shape.STRING)
	public LocalDate getStart() {
		return LocalDate.parse(getData().getNurseDate(), DateTimeFormatter.BASIC_ISO_DATE);
	}

	@Override
	@JsonFormat(shape = Shape.STRING)
	public LocalDate getEnd() {
		return LocalDate.parse(getData().getNurseDate(), DateTimeFormatter.BASIC_ISO_DATE);
	}

	@Override
	public String getColor() {
		String color = "Khaki";
		String aorp = getData().getCodeNm();
		if(aorp.equals("데이")) {
			color = "#efc3e6";
		}else if(aorp.equals("이브닝")) {
			color = "#b9fbc0";
		}
		return color;
	}

	@Override
	public String getTextColor() {
		return "black";
	}
}
