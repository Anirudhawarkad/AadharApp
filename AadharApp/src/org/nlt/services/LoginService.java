package org.nlt.services;

import java.util.List;

import org.hibernate.Query;
import org.nlt.controller.ParentInterface;
import org.nlt.model.Users;

public class LoginService implements ParentInterface{
	
	public Users getLoginUser(String username,String password)
	{
		Query query = ses.createQuery("from Users where email='"+username+"' and password='"+password+"' and status=1");
		List<Users> list = query.list();
		if(list!=null&&list.size()>0)
		{
			return list.get(0);
		}
		
		else
		{
			return null;
		}
	}
}
