package QuizMVC;

import java.util.ArrayList;
import java.util.List;

public class HobbyExpert {
	public List<String> getBrands(String hobby){
		List<String> brands = new ArrayList<String>();
		if(hobby.equals("m")) {
			brands.add("설악산");brands.add("북한산");
		} else if (hobby.equals("t")) {
			brands.add("남해안");brands.add("동해안");
		} else if (hobby.equals("s")) {
			brands.add("해수욕장");brands.add("수영장");
		} else if (hobby.equals("r")) {
			brands.add("단거리");brands.add("장거리");
		} else {
			brands.add("기타");
		}
		return brands;
	}
/*	public String getBrands(String hobby) {
		String h = "";
		if(hobby.equals("m")) {
			h = "백두산, 한라산";
		} else if (hobby.equals("t")) {
			h = "남해안, 동해안";
		} else if (hobby.equals("s")) {
			h = "해수욕장, 수영장";
		} else if (hobby.equals("r")) {
			h = "단거리, 장거리";
		} else {
			h = "기타";
		}
		return h;
	}*/
}
