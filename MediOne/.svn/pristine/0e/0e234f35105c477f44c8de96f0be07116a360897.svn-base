package kr.or.ddit.medical.nurse.vo.wrapper;

import java.time.LocalDate;
import java.util.Collections;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonFormat.Shape;

public abstract class FullcalenderEvent<T> {
	
	private T adaptee;
	public FullcalenderEvent(T adaptee) {
		super();
		this.adaptee = adaptee;
	}
	
	public abstract String getId();	
	public abstract String getTitle();
	@JsonFormat(shape = Shape.STRING)
	public abstract LocalDate getStart();
	@JsonFormat(shape = Shape.STRING)
	public abstract LocalDate getEnd();
	
	
	public T getData() {
		return adaptee;
	}
	
	public Map<String, Object> getExtendedProps() {
		return Collections.singletonMap("data", getData());
	}
}
