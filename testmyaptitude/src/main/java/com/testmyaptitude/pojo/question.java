package com.testmyaptitude.pojo;

public class question {
private int qid;
private String direction;
private String passage;
private String question;
private String option_1;
private String option_2;
private String option_3;
private String option_4;
private String option_5;
private int answer;
public question(){
	
}
public question(int qid, String direction, String passage, String question, String option_1, String option_2,
		String option_3, String option_4, int answer) {
	this.qid = qid;
	this.direction = direction;
	this.passage = passage;
	this.question = question;
	this.option_1 = option_1;
	this.option_2 = option_2;
	this.option_3 = option_3;
	this.option_4 = option_4;
	this.answer = answer;
}

@Override
public String toString() {
	return "question [qid=" + qid + ", direction=" + direction + ", passage=" + passage + ", question=" + question
			+ ", option_1=" + option_1 + ", option_2=" + option_2 + ", option_3=" + option_3 + ", option_4=" + option_4
			+ ", option_5=" + option_5 + ", answer=" + answer + "]";
}
public int getQid() {
	return qid;
}
public void setQid(int qid) {
	this.qid = qid;
}
public String getDirection() {
	return direction;
}
public void setDirection(String direction) {
	this.direction = direction;
}
public String getPassage() {
	return passage;
}
public void setPassage(String passage) {
	this.passage = passage;
}
public String getQuestion() {
	return question;
}
public void setQuestion(String question) {
	this.question = question;
}
public String getOption_1() {
	return option_1;
}
public void setOption_1(String option_1) {
	this.option_1 = option_1;
}
public String getOption_2() {
	return option_2;
}
public void setOption_2(String option_2) {
	this.option_2 = option_2;
}
public String getOption_3() {
	return option_3;
}
public void setOption_3(String option_3) {
	this.option_3 = option_3;
}
public String getOption_4() {
	return option_4;
}
public void setOption_4(String option_4) {
	this.option_4 = option_4;
}
public String getOption_5() {
	return option_5;
}
public void setOption_5(String option_5) {
	this.option_5 = option_5;
}
public int getAnswer() {
	return answer;
}
public void setAnswer(int answer) {
	this.answer = answer;
}
}