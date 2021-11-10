package com.kh.spring.di.xml.vo;

public class Person {
	// xml 통한 의존성 주입 객체
	// 1. 필드 변수
	private String name; // 사람 이름
	private Job myJob;	 // 직업
	
	// 2. 생성자
	public Person() {}
	
	public Person(String name, Job myJob) {
		this.name = name;
		this.myJob = myJob;
	}
	
	// 3. 메소드
	
	@Override
	public String toString() {
		return name + " : " + myJob;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Job getMyJob() {
		return myJob;
	}

	public void setMyJob(Job myJob) {
		this.myJob = myJob;
	}
	
	
	
}
