package test;

import java.util.ArrayList;
import java.util.List;

public class NoticeData {
	public String institute;
	public String phone;
	public String website;
	public String who;
	public String how;
	public String affliates_definition;
	public String nonaffliates_definition;
	public String joint_marketing_definition;
	public String additional_note;
	public List<String> personal_information;
	public List<String> other_information;
	public List<String> where_to_collect;
	public List<String> mail_in_option;
	public String duration;
	
	public String getEverydaybusiness() {
		return everydaybusiness;
	}
	public String getMarketing() {
		return marketing;
	}
	public String getJoint_marketing() {
		return joint_marketing;
	}
	public String getAffiliates_transactions() {
		return affiliates_transactions;
	}
	public String getAffiliates_creditworthiness() {
		return affiliates_creditworthiness;
	}
	public String getNonaffiliates_to_market() {
		return nonaffiliates_to_market;
	}
	public String getAffiliates_to_market() {
		return affiliates_to_market;
	}
	public String getLimit_everydaybusiness() {
		return limit_everydaybusiness;
	}
	public String getLimit_marketing() {
		return limit_marketing;
	}
	public String getLimit_joint_marketing() {
		return limit_joint_marketing;
	}
	public String getLimit_affiliates_transactions() {
		return limit_affiliates_transactions;
	}
	public String getLimit_affiliates_creditworthiness() {
		return limit_affiliates_creditworthiness;
	}
	public String getLimit_nonaffiliates_to_market() {
		return limit_nonaffiliates_to_market;
	}
	public String getLimit_affiliates_to_market() {
		return limit_affiliates_to_market;
	}

	public String everydaybusiness;
	public String marketing;
	public String joint_marketing;
	public String affiliates_transactions;
	public String affiliates_creditworthiness;
	public String nonaffiliates_to_market;
	public String affiliates_to_market;
	
	public String limit_everydaybusiness;
	public String limit_marketing;
	public String limit_joint_marketing;
	public String limit_affiliates_transactions;
	public String limit_affiliates_creditworthiness;
	public String limit_nonaffiliates_to_market;
	public String limit_affiliates_to_market;
	public String joint_option;
	public String getJoint_option() {
		return joint_option;
	}
	public void setJoint_option(String joint_option) {
		this.joint_option = joint_option;
	}
	public String getInstitute() {
		return institute;
	}
	public String getPhone() {
		return phone;
	}
	public String getWebsite() {
		return website;
	}
	public String getWho() {
		return who;
	}
	public String getHow() {
		return how;
	}
	public String getAffliates_definition() {
		return affliates_definition;
	}
	public String getNonaffliates_definition() {
		return nonaffliates_definition;
	}
	public String getJoint_marketing_definition() {
		return joint_marketing_definition;
	}
	public String getAdditional_note() {
		return additional_note;
	}
	public List<String> getPersonal_information() {
		return personal_information;
	}
	public List<String> getOther_information() {
		return other_information;
	}
	public List<String> getWhere_to_collect() {
		return where_to_collect;
	}
	public List<String> getMail_in_option() {
		return mail_in_option;
	}
	public String getDuration() {
		return duration;
	}
	
	public void SetData(FormData formdata){
		this.institute = formdata.institute;
		this.phone = formdata.phone;
		this.website = formdata.website;
		this.who = formdata.who;
		this.how = formdata.how;
		this.affliates_definition = formdata.affliates_definition;
		this.nonaffliates_definition = formdata.nonaffliates_definition;
		this.joint_marketing_definition = formdata.joint_marketing_definition;
		this.additional_note = formdata.additional_note;
		this.duration = formdata.duration;
		this.personal_information = formdata.personal_information;
		this.other_information = formdata.other_information;
		this.where_to_collect = formdata.where_to_collect;
		this.mail_in_option = formdata.mail_in_option;
		if(formdata.what_purpose_sharing.contains("everyday_business")){
			this.everydaybusiness = "Yes";
		} else {
			this.everydaybusiness = "No";
		}
		if(formdata.what_purpose_sharing.contains("marketing")){
			this.marketing = "Yes";
		} else {
			this.marketing = "No";
		}
		if(formdata.what_purpose_sharing.contains("joint_marketing")){
			this.joint_marketing = "Yes";
		} else {
			this.joint_marketing = "No";
		}
		if(formdata.what_purpose_sharing.contains("affiliates_transactions")){
			this.affiliates_transactions = "Yes";
		} else {
			this.affiliates_transactions = "No";
		}
		if(formdata.what_purpose_sharing.contains("affiliates_creditworthiness")){
			this.affiliates_creditworthiness = "Yes";
		} else {
			this.affiliates_creditworthiness = "No";
		}
		if(formdata.what_purpose_sharing.contains("nonaffiliates_to_market")){
			this.nonaffiliates_to_market = "Yes";
		} else {
			this.nonaffiliates_to_market = "No";
		}
		if(formdata.what_purpose_sharing.contains("affiliates_to_market")){
			this.affiliates_to_market = "Yes";
		} else {
			this.affiliates_to_market = "No";
		}
		if(this.everydaybusiness.equals("No")){
			this.limit_everydaybusiness = "We don't share";
		} else {
			if(formdata.what_purpose_limit_sharing.contains("limit_everyday_business")){
				this.limit_everydaybusiness = "Yes";
			} else {
				this.limit_everydaybusiness = "No";
			}
		}
		if(this.marketing.equals("No")){
			this.limit_marketing = "We don't share";
		} else {
			if(formdata.what_purpose_limit_sharing.contains("limit_marketing")){
				this.limit_marketing = "Yes";
			} else {
				this.limit_marketing = "No";
			}
		}
		if(this.joint_marketing.equals("No")){
			this.limit_joint_marketing = "We don't share";
		} else {
			if(formdata.what_purpose_limit_sharing.contains("limit_joint_marketing")){
				this.limit_joint_marketing = "Yes";
			} else {
				this.limit_joint_marketing = "No";
			}
		}
		if(this.affiliates_transactions.equals("No")){
			this.limit_affiliates_transactions = "We don't share";
		} else {
			if(formdata.what_purpose_limit_sharing.contains("limit_affiliates_transactions")){
				this.limit_affiliates_transactions = "Yes";
			} else {
				this.limit_affiliates_transactions = "No";
			}
		}
		if(this.affiliates_creditworthiness.equals("No")){
			this.limit_affiliates_creditworthiness = "We don't share";
		} else {
			if(formdata.what_purpose_limit_sharing.contains("limit_affiliates_creditworthiness")){
				this.limit_affiliates_creditworthiness = "Yes";
			} else {
				this.limit_affiliates_creditworthiness = "No";
			}
		}
		if(this.nonaffiliates_to_market.equals("No")){
			this.limit_nonaffiliates_to_market = "We don't share";
		} else {
			if(formdata.what_purpose_limit_sharing.contains("limit_nonaffiliates_to_market")){
				this.limit_nonaffiliates_to_market = "Yes";
			} else {
				this.limit_nonaffiliates_to_market = "No";
			}
		}
		if(this.affiliates_to_market.equals("No")){
			this.limit_affiliates_to_market = "We don't share";
		} else {
			if(formdata.what_purpose_limit_sharing.contains("limit_affiliates_to_market")){
				this.limit_affiliates_to_market = "Yes";
			} else {
				this.limit_affiliates_to_market = "No";
			}
		}
		
	}
	
	

}
