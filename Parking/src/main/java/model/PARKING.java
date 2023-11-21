package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@Getter
public class PARKING {
	
	private String P_CODE;
	private String P_PLACE;
	private String P_TYPE;
	private String P_ADDRESS;
	private String P_FULL;
	private String P_PRICE;
	private String P_TIME;
	private String P_INFO;
	private String P_ABLE;
	private String P_YN;
	private Integer P_COUNT;
	private Integer P_POS;
	
}
