package com.codeplanet.model1;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class AgarwalPage {
	private int vehicleId;
	private String registrationNo;
	private String modelCompany;
	private String modelName;
	private String typeOfVehicle;
	private String ownerName;
	private Date  dateOfPurchase;
	private Date rcDateOfIssue;
	private Date rcDateOfExp;
	private Date insuranceIssueDate;
	private Date insuranceExpiryDate;
	private Date PUCDateOfIssue;
	private Date PUCDateOfExp;
	private int modelYear;
	private String  chacisNo;
	private String engineNo;
	private String keyNo;
	private Date fitness;
	private Date permit;
	private String checkboxvalue;
	private MultipartFile rcfileData;
	private MultipartFile pucfileData;
	private MultipartFile fileData;
		public String getModelCompany() {
		return modelCompany;
	}
	public void setModelCompany(String modelCompany) {
		this.modelCompany = modelCompany;
	}
	public String getModelName() {
		return modelName;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public String getTypeOfVehicle() {
		return typeOfVehicle;
	}
	public void setTypeOfVehicle(String typeOfVehicle) {
		this.typeOfVehicle = typeOfVehicle;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public Date getDateOfPurchase() {
		return dateOfPurchase;
	}
	public void setDateOfPurchase(Date dateOfPurchase) {
		this.dateOfPurchase = dateOfPurchase;
	}
	public Date getRcDateOfIssue() {
		return rcDateOfIssue;
	}
	public void setRcDateOfIssue(Date rcDateOfIssue) {
		this.rcDateOfIssue = rcDateOfIssue;
	}
	public Date getRcDateOfExp() {
		return rcDateOfExp;
	}
	public void setRcDateOfExp(Date rcDateOfExp) {
		this.rcDateOfExp = rcDateOfExp;
	}
	public Date getInsuranceIssueDate() {
		return insuranceIssueDate;
	}
	public void setInsuranceIssueDate(Date insuranceIssueDate) {
		this.insuranceIssueDate = insuranceIssueDate;
	}
	public Date getInsuranceExpiryDate() {
		return insuranceExpiryDate;
	}
	public void setInsuranceExpiryDate(Date insuranceExpiryDate) {
		this.insuranceExpiryDate = insuranceExpiryDate;
	}
	public Date getPUCDateOfIssue() {
		return PUCDateOfIssue;
	}
	public void setPUCDateOfIssue(Date pUCDateOfIssu) {
		PUCDateOfIssue = pUCDateOfIssu;
	}
	public Date getPUCDateOfExp() {
		return PUCDateOfExp;
	}
	public void setPUCDateOfExp(Date pUCDateOfExp) {
		PUCDateOfExp = pUCDateOfExp;
	}
	public int getModelYear() {
		return modelYear;
	}
	public void setModelYear(int modelYear) {
		this.modelYear = modelYear;
	}
	public Date getFitness() {
		return fitness;
	}
	public void setFitness(Date fitness) {
		this.fitness = fitness;
	}
	public Date getPermit() {
		return permit;
	}
	public void setPermit(Date permit) {
		this.permit = permit;
	}
	public String getCheckboxvalue() {
		return checkboxvalue;
	}
	public void setCheckboxvalue(String checkboxvalue) {
		this.checkboxvalue = checkboxvalue;
	}
	public MultipartFile getRcfileData() {
		return rcfileData;
	}
	public void setRcfileData(MultipartFile rcfileData) {
		this.rcfileData = rcfileData;
	}
	public MultipartFile getPucfileData() {
		return pucfileData;
	}
	public void setPucfileData(MultipartFile pucfileData) {
		this.pucfileData = pucfileData;
	}
	public MultipartFile getFileData() {
		return fileData;
	}
	public void setFileData(MultipartFile fileData) {
		this.fileData = fileData;
	}
	public String getRegistrationNo() {
		return registrationNo;
	}
	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}
	public String getChacisNo() {
		return chacisNo;
	}
	public void setChacisNo(String chacisNo) {
		this.chacisNo = chacisNo;
	}
	public String getEngineNo() {
		return engineNo;
	}
	public void setEngineNo(String engineNo) {
		this.engineNo = engineNo;
	}
	public String getKeyNo() {
		return keyNo;
	}
	public void setKeyNo(String keyNo) {
		this.keyNo = keyNo;
	}
	public int getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}
	
	
}
