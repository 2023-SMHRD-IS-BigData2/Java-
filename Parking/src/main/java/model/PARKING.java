package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class PARKING {
	@NonNull
	private String P_PLACE;
	@NonNull
	private String P_TYPE;
	@NonNull
	private String P_ADDRESS;
	@NonNull
	private String P_FULL;
	@NonNull
	private String P_PRICE;
	@NonNull
	private String P_TIME;
	@NonNull
	private String P_INFO;
	@NonNull
	private String P_ABLE;
	private String P_YN;
	private Integer P_COUNT;
	private Integer P_POS;
}
