package com.codeplanet.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.codeplanet.Service.HomeService;
import com.codeplanet.model.User;
import com.codeplanet.model1.AgarwalPage;

@Controller
public class HomeController
{
	static int vi=0;
	@Autowired
	HomeService hs;
	@RequestMapping (value="/", method=RequestMethod.GET )
	public String home()
	{
	
		return "index";
		
	}

	@RequestMapping (value="signup", method=RequestMethod.GET )
	public String signup()
	{
	
		return "signUp";
		
	}


	@RequestMapping (value="inserIntoDB", method=RequestMethod.GET )
	public String submit(User u)
	{
		hs.userEntry(u);
	    
	    return "index";
		
	}
	
	@RequestMapping (value="loginpage", method=RequestMethod.GET )
	public String loginPage(User u)
	{  
	
		return "Login";
		
	}
	@RequestMapping (value="validateUser", method=RequestMethod.POST )
	public String login (User u,HttpServletRequest req)
	{ 
		int a=hs.sumit(u);
	
		if(a==1)
		{
	
		
			req.setAttribute("roleId", u.getRoleId());
			req.setAttribute("roleName", u.getRoleName());
			return "Menu";
		}
		else
		{
			return "Login";
		}
	}
	@RequestMapping (value="approvalpending", method=RequestMethod.GET )
	public ModelAndView showPending(HttpServletRequest rs,User u)
		
	{	
		List<User>list=hs.showPending(u);
	     rs.setAttribute("pending",list);
	     return new ModelAndView("pendingApproval");
		
	}
	@RequestMapping (value="approve", method=RequestMethod.POST )
	public ModelAndView uApprove(HttpServletRequest rs,User u)
		
	{	
		List<User>list=hs.uApprove(u);
	     rs.setAttribute("pending",list);
	     return new ModelAndView("pendingApproval");
		
	}
	@RequestMapping (value="reject", method=RequestMethod.POST )
	public ModelAndView uReject(HttpServletRequest rs,User u)
		
	{	
		List<User>list = hs.uReject(u);
	     rs.setAttribute("pending",list);
	     return new ModelAndView("pendingApproval");
		
	}
	@RequestMapping (value="newPersonalVehicleReg" )
	public String vechPersReg()
	{
	
		return "personalRegistration";
		
	}
	@RequestMapping (value="newVehicleReg" )
	public String vechCommReg()
	{
	
		return "commerciaRegistration";
		
	}

	@RequestMapping (value="CommercialVehicleDetails" )
	public ModelAndView viewCommReg(HttpServletRequest rs, AgarwalPage u)
	
	{	
		List<AgarwalPage>list = hs.view(u);
	     rs.setAttribute("model",list);
	     return new ModelAndView("viewPersonalVehicle");
		
	}
	    
	@RequestMapping (value="addToTable", method=RequestMethod.POST )
	public String commReg(HttpServletRequest rs)throws Exception
	{
		SimpleDateFormat sdf=new SimpleDateFormat("dd-mm-yyyy");
		AgarwalPage r=new AgarwalPage();
		r.setRegistrationNo(rs.getParameter("registrationNo"));
		r.setInsuranceIssueDate(sdf.parse(rs.getParameter("insuranceIssueDate")));
		r.setTypeOfVehicle(rs.getParameter("typeOfVehicle"));
		r.setOwnerName(rs.getParameter("ownerName"));
		r.setRcDateOfIssue(sdf.parse(rs.getParameter("rcDateOfIssue")));
		r.setPUCDateOfIssue(sdf.parse(rs.getParameter("PUCDateOfIssue")));
		r.setModelYear(Integer.parseInt(rs.getParameter("modelYear")));
		r.setEngineNo(rs.getParameter("engineNo"));
		r.setFitness(sdf.parse(rs.getParameter("fitness")));
		r.setCheckboxvalue(rs.getParameter("checkboxvalue"));
		r.setModelCompany(rs.getParameter("modelCompany"));
		r.setModelName(rs.getParameter("modelName"));
		r.setDateOfPurchase(sdf.parse(rs.getParameter("dateOfPurchase")));
		r.setRcDateOfExp(sdf.parse(rs.getParameter("rcDateOfExp")));
		r.setInsuranceExpiryDate(sdf.parse(rs.getParameter("insuranceExpiryDate")));
		r.setPUCDateOfExp(sdf.parse(rs.getParameter("PUCDateOfExp")));
		r.setChacisNo(rs.getParameter("chacisNo"));
		r.setKeyNo(rs.getParameter("keyNo"));
		r.setPermit(sdf.parse(rs.getParameter("permit")));
		hs.commReg(r);
		return "Login";
	
	}
	@RequestMapping (value="editPersonalVehicleDetails" )
	public ModelAndView Expiry(HttpServletRequest rs,AgarwalPage u)
	{
		vi=u.getVehicleId();
		List<AgarwalPage>list = hs.views(u);
	     rs.setAttribute("model",list);
	    
		return new ModelAndView("editCommercialRegistration");
	
		
		
	}
	@RequestMapping (value="Insurance" )
	public ModelAndView insuranceExpiry(AgarwalPage u,HttpServletRequest rs)
	{
		List<AgarwalPage>list = hs.viewss(u);
	     rs.setAttribute("model",list);
	    
		return new ModelAndView("ExpiryInsurance");
	
	
		
		
	}
	@RequestMapping (value="RC" )
	public ModelAndView rcExpiry(AgarwalPage u,HttpServletRequest rs)
	{
		List<AgarwalPage>list = hs.viewss(u);
	     rs.setAttribute("model",list);
	    
		return new ModelAndView("ExpiryRc");
		
	}

	@RequestMapping (value="PUC" )
	public ModelAndView pucExpiry(AgarwalPage u,HttpServletRequest rs)
	{List<AgarwalPage>list = hs.viewss(u);
    rs.setAttribute("model",list);    
	return new ModelAndView("ExpiryPuc");

	}
	@RequestMapping (value="addToTable1", method=RequestMethod.POST )
	public String edit(HttpServletRequest rs)throws Exception
	{
		
		SimpleDateFormat sdf=new SimpleDateFormat("dd-mm-yyyy");
		AgarwalPage r=new AgarwalPage();
		r.setRegistrationNo(rs.getParameter("registrationNo"));
		r.setInsuranceIssueDate(sdf.parse(rs.getParameter("insuranceIssueDate")));
		r.setTypeOfVehicle(rs.getParameter("typeOfVehicle"));
		r.setOwnerName(rs.getParameter("ownerName"));
		r.setRcDateOfIssue(sdf.parse(rs.getParameter("rcDateOfIssue")));
		r.setPUCDateOfIssue(sdf.parse(rs.getParameter("PUCDateOfIssue")));
		r.setModelYear(Integer.parseInt(rs.getParameter("modelYear")));
		r.setEngineNo(rs.getParameter("engineNo"));
		r.setFitness(sdf.parse(rs.getParameter("fitness")));
		r.setCheckboxvalue(rs.getParameter("checkboxvalue"));
		r.setModelCompany(rs.getParameter("modelCompany"));
		r.setModelName(rs.getParameter("modelName"));
		r.setDateOfPurchase(sdf.parse(rs.getParameter("dateOfPurchase")));
		r.setRcDateOfExp(sdf.parse(rs.getParameter("rcDateOfExp")));
		r.setInsuranceExpiryDate(sdf.parse(rs.getParameter("insuranceExpiryDate")));
		r.setPUCDateOfExp(sdf.parse(rs.getParameter("PUCDateOfExp")));
		r.setChacisNo(rs.getParameter("chacisNo"));
		r.setKeyNo(rs.getParameter("keyNo"));
		r.setPermit(sdf.parse(rs.getParameter("permit")));
		r.setVehicleId(vi);
		hs.edit(r);
		return "Login";
	
	}
	


    
	
	

}
