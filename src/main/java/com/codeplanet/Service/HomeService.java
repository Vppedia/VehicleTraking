package com.codeplanet.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codeplanet.model.User;
import com.codeplanet.model1.AgarwalPage;

@Service
public interface HomeService {
	public void userEntry(User e);
	public int sumit(User u);
	public List<User> showPending(User u);
	public List<User> uApprove(User u);
	public List<User> uReject(User u);
	public void commReg(AgarwalPage r);
	public List<AgarwalPage> view(AgarwalPage u);
	public List<AgarwalPage> views(AgarwalPage u);
	public List<AgarwalPage> viewss(AgarwalPage u);
	public void edit(AgarwalPage r);
	

}
