package test;

import java.util.ArrayList;
import java.util.List;

public class FormData {
	public String institute;
	public String phone;
	public String website;
	public String question1;
	public String question2;
	public String question3;
	public String question4;
	public String question5;
	public String question6;
	public String question7;
	public String question8;	
	public String question9;
	public String question10;
	public String question11;
	public String question12;
	public String question13;
	public String question14;
	public String question15;
	public String question16;
	public String question17;
	public String question18;
	
    public List<String> other_information;
    public List<String> personal_information;
	public String affliates_definition;
	public String nonaffliates_definition;
	public String additional_note;
	public String joint_marketing_definition;
	public String who;
	public String getQuestion1() {
		return question1;
	}
	public void setQuestion1(String question1) {
		this.question1 = question1;
	}
	public String getQuestion2() {
		return question2;
	}
	public void setQuestion2(String question2) {
		this.question2 = question2;
	}
	public String getQuestion3() {
		return question3;
	}
	public void setQuestion3(String question3) {
		this.question3 = question3;
	}
	public String getQuestion4() {
		return question4;
	}
	public void setQuestion4(String question4) {
		this.question4 = question4;
	}
	public String getQuestion5() {
		if(question1.equals("No")){
			question5 = "No";
		} else if(question4.equals("No")){
			question5 = "we don't share";
		}
		return question5;
	}
	public void setQuestion5(String question5) {
		this.question5 = question5;
	}
	public String getQuestion6() {
		return question6;
	}
	public void setQuestion6(String question6) {
		this.question6 = question6;
	}
	public String getQuestion7() {
		if(question1.equals("No")){
			question7 = "No";
		} else if(question6.equals("No")){
			question7 = "we don't share";
		}
		return question7;
	}
	public void setQuestion7(String question7) {
		this.question7 = question7;
	}
	public String getQuestion8() {
		return question8;
	}
	public void setQuestion8(String question8) {
		this.question8 = question8;
	}
	public String getQuestion9() {
		if(question1.equals("No")){
			question9 = "No";
		} else if(question8.equals("No")){
			question9 = "we don't share";
		}
		return question9;
	}
	public void setQuestion9(String question9) {
		this.question9 = question9;
	}
	public String getQuestion10() {
		return question10;
	}
	public void setQuestion10(String question10) {
		this.question10 = question10;
	}
	public String getQuestion11() {
		if(question1.equals("No")){
			question11 = "No";
		} else if(question10.equals("No")){
			question11 = "we don't share";
		}
		return question11;
	}
	public void setQuestion11(String question11) {
		this.question11 = question11;
	}
	public String getQuestion12() {
		return question12;
	}
	public void setQuestion12(String question12) {
		this.question12 = question12;
	}
	public String getQuestion13() {
		if(question1.equals("No")){
			question13 = "No";
		} else if(question12.equals("No")){
			question13 = "we don't share";
		}
		return question13;
	}
	public void setQuestion13(String question13) {
		this.question13 = question13;
	}
	public String getQuestion14() {
		return question14;
	}
	public void setQuestion14(String question14) {
		this.question14 = question14;
	}
	public String getQuestion15() {
		if(question1.equals("No")){
			question15 = "No";
		} else if(question14.equals("No")){
			question15 = "we don't share";
		}
		return question15;
	}
	public void setQuestion15(String question15) {
		this.question15 = question15;
	}
	public String getQuestion16() {
		return question16;
	}
	public void setQuestion16(String question16) {
		this.question16 = question16;
	}
	public String getQuestion17() {
		if(question1.equals("No")){
			question17 = "No";
		} else if(question16.equals("No")){
			question17 = "we don't share";
		}
		return question17;
	}
	public void setQuestion17(String question17) {
		this.question17 = question17;
	}
	public String getQuestion18() {
		return question18;
	}
	public void setQuestion18(String question18) {
		this.question18 = question18;
	}
	public List<String> getOther_information() {
		return other_information;
	}
	public void setOther_information(List<String> other_information) {
		this.other_information = other_information;
	}
	public List<String> getPersonal_information() {
		return personal_information;
	}
	public void setPersonal_information(List<String> personal_information) {
		this.personal_information = personal_information;
	}
	public String getAffliates_definition() {
		return affliates_definition;
	}
	public void setAffliates_definition(String affliates_definition) {
		this.affliates_definition = affliates_definition;
	}
	public String getNonaffliates_definition() {
		return nonaffliates_definition;
	}
	public void setNonaffliates_definition(String nonaffliates_definition) {
		this.nonaffliates_definition = nonaffliates_definition;
	}
	public String getAdditional_note() {
		return additional_note;
	}
	public void setAdditional_note(String additional_note) {
		this.additional_note = additional_note;
	}
	public String getJoint_marketing_definition() {
		return joint_marketing_definition;
	}
	public void setJoint_marketing_definition(String joint_marketing_definition) {
		this.joint_marketing_definition = joint_marketing_definition;
	}
	public String getWho() {
		return who;
	}
	public void setWho(String who) {
		this.who = who;
	}
	public String getHow() {
		return how;
	}
	public void setHow(String how) {
		this.how = how;
	}
	public String how;
	public String getInstitute() {
		return institute;
	}
	public void setInstitute(String institute) {
		this.institute = institute;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	
	

}
