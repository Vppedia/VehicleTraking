package com.codeplanet.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.codeplanet.model.User;
import com.codeplanet.model1.AgarwalPage;

@Repository
public interface HomeDao {

public void userEntry(User u);
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
