package com.codeplanet.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeplanet.Dao.HomeDao;
import com.codeplanet.model.User;
import com.codeplanet.model1.AgarwalPage;

@Service
public class HomeServiceImpl implements HomeService 
{

	@Autowired 
	HomeDao hd;
	
	
	
public void userEntry(User u)
{
hd.userEntry(u);
	
}
public int sumit(User u)
{
return hd.sumit(u);
	
}
public List<User> showPending(User u)
{
	return hd.showPending(u);
	}
public List<User> uApprove(User u)
{
	return hd.uApprove(u);
}
public List<User> uReject(User u)
{
	return hd.uReject(u);
}
public void commReg(AgarwalPage r)
{
hd.commReg(r);	
}
public void edit(AgarwalPage r)
{
hd.edit(r);	
}
public List<AgarwalPage> view(AgarwalPage u)
{
	return hd.view(u);
	}
public List<AgarwalPage> views(AgarwalPage u)
{
	return hd.views(u);
	}
public List<AgarwalPage> viewss(AgarwalPage u)
{
	return hd.viewss(u);
	}

}