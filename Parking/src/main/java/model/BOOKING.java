package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@Getter

public class BOOKING {
	private Integer B_NUM;
	private String ID;
	private String B_DATE;
	private String B_EXDATE;
	private String B_TIME;
	private String B_PLACE;
	private String B_PRICE;
	private String B_YN;
	
}
