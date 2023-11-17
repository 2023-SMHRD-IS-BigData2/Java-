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
public class MEMBER {

	@NonNull
	private String ID;
	@NonNull
	private String PW;
	private String NAME;
	private String TEL;
	private String CAR_NUM;
	private String CAR_TYPE;
}
