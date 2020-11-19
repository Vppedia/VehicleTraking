package com.codeplanet.Dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.codeplanet.model.User;
import com.codeplanet.model1.AgarwalPage;

@Repository
public class HomeDaoImpl implements HomeDao
{
	@Autowired 
	JdbcTemplate jdbcTemplate;
	public void userEntry(User e)
	{
	 	final String procedureCall = "{call  Proc_Vechile(?,?,?,?,?,?,?,?,?)}";
		Connection connection = null;
		try 
		{
			   connection = jdbcTemplate.getDataSource().getConnection();
			     CallableStatement callableSt = connection.prepareCall(procedureCall);
			     callableSt.setString(1,"Insert");
                 callableSt.setString(2,e.getName());
                 callableSt.setString(3,e.getUserName());
                 callableSt.setString(4,e.getEmail());
                 callableSt.setString(5,e.getMobile());
                 callableSt.setString(6,e.getPassword());
                 callableSt.setInt(7,2);
                 callableSt.setString(8,"User");
                 callableSt.setInt(9, 0);
                 int x=callableSt.executeUpdate();
           
		} 
		
		catch (SQLException e1)
		 {
			e1.printStackTrace();
		
		
		   } 
		finally {
			
			if (connection != null)
				try 
			        {
					connection.close();
				  } 
			    catch (SQLException e1) 
			     {
					e1.printStackTrace();
				}
		}


	
		
	}

	
	public int sumit(User emp) 
	{ int a=0;		

		final String procedureCall = "{call Proc_Vechile(?,?)}";
		Connection connection = null;
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "Checkpassword");
			 callableSt.setString(2,emp.getUserName());
			


					
             ResultSet rs1 = callableSt.executeQuery();
             
            if(rs1.next())
          { 
        	if(rs1.getInt("isVerified")==1)  
        	{
              if(rs1.getString("password").equals(emp.getPassword()))
              {
            	  emp.setRoleId(rs1.getInt("roleId"));
            	  emp.setRoleName(rs1.getString("roleName"));
            	  
            	  
            	  a=1;  
              }
        	} 
          }
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}

		return a;
	}
	public List<User> showPending(User u)
	{
		
		final String procedureCall = "{call Proc_Vechile(?)}";
		Connection connection = null;
		List<User> l= new ArrayList<User>();
		try {
			connection = jdbcTemplate.getDataSource().getConnection();
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			    callableSt.setString(1,"ShowPending");
			    
			    
			    
			    
			ResultSet rs=callableSt.executeQuery();
			
			while(rs.next())
			{	
				User b= new User();
								
								b.setUserId(rs.getInt("userId"));
								b.setEmail(rs.getString("emailId"));
								b.setName(rs.getString("name"));
                                b.setUserName(rs.getString("userName"));       
		       l.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return l;
	}
	
	public List<User> uApprove(User u)
	{
		
		final String procedureCall = "{call Proc_Vechile(?,?)}";
		Connection connection = null;
		try {
			
			connection = jdbcTemplate.getDataSource().getConnection();
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "UApprove");
			callableSt.setInt(2, u.getUserId());
			
             callableSt.executeUpdate();               
          }
		catch (SQLException e) 
		{
			e.printStackTrace();
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return showPending(u);
	}
	public List<User> uReject(User u)
	{
		
		final String procedureCall = "{call Proc_Vechile(?,?)}";
		Connection connection = null;
		try {
			
			connection = jdbcTemplate.getDataSource().getConnection();
			CallableStatement callableSt = connection.prepareCall(procedureCall);
			callableSt.setString(1, "UReject");
			callableSt.setInt(2, u.getUserId());
			
             callableSt.executeUpdate();               
          }
		catch (SQLException e) 
		{
			e.printStackTrace();
		} finally {
			if (connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return showPending(u);
	}
	

public void commReg(AgarwalPage r)
{


 	final String procedureCall = "{call  Proc_Vechile(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	Connection connection = null;
	try 
	{
		   connection = jdbcTemplate.getDataSource().getConnection();
		     CallableStatement callableSt = connection.prepareCall(procedureCall);
		     callableSt.setString(1,"commReg");
		     long ms=r.getInsuranceIssueDate().getTime();
             callableSt.setDate(2,new java.sql.Date(ms));
		     callableSt.setString(3,r.getRegistrationNo());
		     callableSt.setString(4,r.getChacisNo());
		     callableSt.setString(5,r.getEngineNo());
		     callableSt.setInt(6,r.getModelYear());
		     callableSt.setString(7,r.getKeyNo());
		     callableSt.setString(8,r.getModelCompany());
		     callableSt.setString(9,r.getModelName());
		     callableSt.setString(10,r.getOwnerName());
		     callableSt.setString(11,r.getTypeOfVehicle());
		     callableSt.setString(12,r.getCheckboxvalue());
		      ms=r.getFitness().getTime();
		      callableSt.setDate(13,new java.sql.Date(ms));
		       ms=r.getInsuranceExpiryDate().getTime();
		       callableSt.setDate(14,new java.sql.Date(ms));
		       ms=r.getPermit().getTime();
		       callableSt.setDate(15,new java.sql.Date(ms));
		       ms=r.getPUCDateOfExp().getTime();
		       callableSt.setDate(16,new java.sql.Date(ms));
		       ms=r.getPUCDateOfIssue().getTime();
		       callableSt.setDate(17,new java.sql.Date(ms));
		       ms=r.getDateOfPurchase().getTime();
		       callableSt.setDate(18,new java.sql.Date(ms));
		       ms=r.getRcDateOfExp().getTime();
		       callableSt.setDate(19,new java.sql.Date(ms));
		       ms=r.getRcDateOfIssue().getTime();
		       callableSt.setDate(20,new java.sql.Date(ms));
		       
		       
		      

             int x=callableSt.executeUpdate();
             
       
	} 
	
	catch (SQLException e1)
	 {
		e1.printStackTrace();
	
	
	   } 
	finally {
		
		if (connection != null)
			try 
		        {
				connection.close();
			  } 
		    catch (SQLException e1) 
		     {
				e1.printStackTrace();
			}
	}







}
public List<AgarwalPage> view(AgarwalPage u)
{

	final String procedureCall = "{call Proc_Vechile(?)}";
	Connection connection = null;
	List<AgarwalPage> l= new ArrayList<AgarwalPage>();
	try {
		connection = jdbcTemplate.getDataSource().getConnection();
		CallableStatement callableSt = connection.prepareCall(procedureCall);
		    callableSt.setString(1,"viewKar");
		    
		    
		    
		    
		ResultSet rs=callableSt.executeQuery();
		
		while(rs.next())
		{	
			
			                     AgarwalPage b= new AgarwalPage();
							      b.setRegistrationNo(rs.getString("rcNo"));
							      b.setTypeOfVehicle(rs.getString("vechileType"));
							      b.setModelName(rs.getString("modelName"));
							      b.setVehicleId(rs.getInt("vehicleId"));
							     					  
							      
						      	  l.add(b);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (connection != null)
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	return l;

	
	}

public List<AgarwalPage> views(AgarwalPage u)
{

	final String procedureCall = "{call Proc_Vechile(?,?)}";
	Connection connection = null;
	List<AgarwalPage> l= new ArrayList<AgarwalPage>();
	try {
		connection = jdbcTemplate.getDataSource().getConnection();
		CallableStatement callableSt = connection.prepareCall(procedureCall);
		    callableSt.setString(1,"viewKars");
		    callableSt.setInt(2,u.getVehicleId());
		    
		    
		    
		    
		ResultSet rs=callableSt.executeQuery();
		
		while(rs.next())
		{	
			
			                     AgarwalPage b= new AgarwalPage();
							      b.setRegistrationNo(rs.getString("rcNo"));
							      b.setTypeOfVehicle(rs.getString("vechileType"));
							      b.setModelName(rs.getString("modelName"));
							      b.setVehicleId(rs.getInt("vehicleId"));
							      b.setChacisNo(rs.getString("chachisNumber"));
							      b.setCheckboxvalue(rs.getString("taxValidityLifetime"));
							      b.setDateOfPurchase(rs.getDate("datePurchase"));
							      b.setEngineNo(rs.getString("engineNumber"));
							      b.setFitness(rs.getDate("fitness"));
							      b.setInsuranceExpiryDate(rs.getDate("insuranceExpiryDate"));
							      b.setInsuranceIssueDate(rs.getDate("insuranceIssueDate"));
							      b.setKeyNo(rs.getString("keyNumber"));
							      b.setModelCompany(rs.getString("companyName"));
							      b.setModelYear(rs.getInt("modelManufactureYear"));
							      b.setOwnerName(rs.getString("ownerName"));
							      b.setPermit(rs.getDate("permit"));
							      b.setPUCDateOfExp(rs.getDate("PUCexpiryDate"));
							      b.setPUCDateOfIssue(rs.getDate("PUCissueDate"));
							      b.setRcDateOfExp(rs.getDate("rcExpiryDate"));
							      b.setRcDateOfIssue(rs.getDate("rcIssueDate"));
							     
							    
							  
							      
						      	  l.add(b);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (connection != null)
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	return l;

	
	}
public List<AgarwalPage> viewss(AgarwalPage u)
{
    String procedureCall = "{call Proc_Vechile(?)}";
	Connection connection = null;
	List<AgarwalPage> l= new ArrayList<AgarwalPage>();
	try {
		connection = jdbcTemplate.getDataSource().getConnection();
		CallableStatement callableSt = connection.prepareCall(procedureCall);
		    callableSt.setString(1,"viewKarss");
		    
		    
		    
		    
		    
		ResultSet rs=callableSt.executeQuery();
		
		while(rs.next())
		{	
			
			                     AgarwalPage b= new AgarwalPage();
							      b.setRegistrationNo(rs.getString("rcNo"));
							      b.setTypeOfVehicle(rs.getString("vechileType"));
							      b.setModelName(rs.getString("modelName"));
							      b.setVehicleId(rs.getInt("vehicleId"));
							      b.setChacisNo(rs.getString("chachisNumber"));
							      b.setCheckboxvalue(rs.getString("taxValidityLifetime"));
							      b.setDateOfPurchase(rs.getDate("datePurchase"));
							      b.setEngineNo(rs.getString("engineNumber"));
							      b.setFitness(rs.getDate("fitness"));
							      b.setInsuranceExpiryDate(rs.getDate("insuranceExpiryDate"));
							      b.setInsuranceIssueDate(rs.getDate("insuranceIssueDate"));
							      b.setKeyNo(rs.getString("keyNumber"));
							      b.setModelCompany(rs.getString("companyName"));
							      b.setModelYear(rs.getInt("modelManufactureYear"));
							      b.setOwnerName(rs.getString("ownerName"));
							      b.setPermit(rs.getDate("permit"));
							      b.setPUCDateOfExp(rs.getDate("PUCexpiryDate"));
							      b.setPUCDateOfIssue(rs.getDate("PUCissueDate"));
							      b.setRcDateOfExp(rs.getDate("rcExpiryDate"));
							      b.setRcDateOfIssue(rs.getDate("rcIssueDate"));
							     
							    
							  
							      
						      	  l.add(b);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (connection != null)
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	return l;

	
	}
public void edit(AgarwalPage r)
{	
 	final String procedureCall = "{call  Proc_Vechile(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	Connection connection = null;
	try 
	{
		   connection = jdbcTemplate.getDataSource().getConnection();
		     CallableStatement callableSt = connection.prepareCall(procedureCall);
		     callableSt.setString(1,"edit");
		     long ms=r.getInsuranceIssueDate().getTime();
             callableSt.setDate(2,new java.sql.Date(ms));
		     callableSt.setString(3,r.getRegistrationNo());
		     callableSt.setString(4,r.getChacisNo());
		     callableSt.setString(5,r.getEngineNo());
		     callableSt.setInt(6,r.getModelYear());
		     callableSt.setString(7,r.getKeyNo());
		     callableSt.setString(8,r.getModelCompany());
		     callableSt.setString(9,r.getModelName());
		     callableSt.setString(10,r.getOwnerName());
		     callableSt.setString(11,r.getTypeOfVehicle());
		     callableSt.setString(12,r.getCheckboxvalue());
		      ms=r.getFitness().getTime();
		      callableSt.setDate(13,new java.sql.Date(ms));
		       ms=r.getInsuranceExpiryDate().getTime();
		       callableSt.setDate(14,new java.sql.Date(ms));
		       ms=r.getPermit().getTime();
		       callableSt.setDate(15,new java.sql.Date(ms));
		       ms=r.getPUCDateOfExp().getTime();
		       callableSt.setDate(16,new java.sql.Date(ms));
		       ms=r.getPUCDateOfIssue().getTime();
		       callableSt.setDate(17,new java.sql.Date(ms));
		       ms=r.getDateOfPurchase().getTime();
		       callableSt.setDate(18,new java.sql.Date(ms));
		       ms=r.getRcDateOfExp().getTime();
		       callableSt.setDate(19,new java.sql.Date(ms));
		       ms=r.getRcDateOfIssue().getTime();
		       callableSt.setDate(20,new java.sql.Date(ms));
		       callableSt.setInt(21,r.getVehicleId());
		       
		       
		      

             int x=callableSt.executeUpdate();
             
       
	} 
	
	catch (SQLException e1)
	 {
		e1.printStackTrace();
	
	
	   } 
	finally {
		
		if (connection != null)
			try 
		        {
				connection.close();
			  } 
		    catch (SQLException e1) 
		     {
				e1.printStackTrace();
			}
	}








	



}




}
	
	
	
