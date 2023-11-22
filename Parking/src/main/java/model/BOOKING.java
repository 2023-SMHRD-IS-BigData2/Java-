package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter

public class BOOKING {
	@NonNull
	private Integer B_NUM;
	@NonNull
	private String ID;
	private String B_DATE;
	private String B_EXDATE;
	private String B_TIME;
	@NonNull
	private String B_PLACE;
	@NonNull
	private String B_PRICE;
	@NonNull
	private String B_YN;
	
	public BOOKING(String B_DATE, String B_EXDATE, String B_TIME) {
		this.B_DATE=B_DATE;
		this.B_EXDATE=B_EXDATE;
		this.B_TIME=B_TIME;
	}
}
