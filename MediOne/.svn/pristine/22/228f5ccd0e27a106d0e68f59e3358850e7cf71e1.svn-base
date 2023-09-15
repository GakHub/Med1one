package kr.or.ddit.medical.nurse.vo.wrapper;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

import kr.or.ddit.medical.nurse.vo.ReservationVO;

public class ReserSchdulVOWrapper extends FullcalenderEventColor<ReservationVO> {
	
	public ReserSchdulVOWrapper(ReservationVO adaptee) {
		super(adaptee);
	}

	@Override
	public String getId() {
		return getData().getResveNum();
	}
	
	@Override
	public String getTitle() {
		String rawTime = getData().getResveTime();
	    String formattedTime = String.format("%s:%s", rawTime.substring(0, 2), rawTime.substring(2));
		return formattedTime +" "+getData().getPatntNm() + " 환자 진료";
	}
	
	@Override
	@JsonFormat(shape = Shape.STRING)
	public LocalDate getStart() {
		return LocalDate.parse(getData().getResveDate(), DateTimeFormatter.BASIC_ISO_DATE);
		
	}
	
	@Override
	@JsonFormat(shape = Shape.STRING)
	public LocalDate getEnd() {
		return LocalDate.parse(getData().getResveDate(), DateTimeFormatter.BASIC_ISO_DATE);
		
	}

	@Override
	public String getColor() {
		String color = "#FFD3E9";
		
		return color;
	}

	@Override
	public String getTextColor() {
		return "black";
	}


}
