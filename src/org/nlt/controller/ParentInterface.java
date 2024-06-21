package org.nlt.controller;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.nlt.services.LoginService;

public interface ParentInterface {
	public SessionFactory sf=getDatabaseSessionFactory();
	public Session ses=sf.openSession();
	
	public LoginService loginService=new LoginService();
	
	public static SessionFactory getDatabaseSessionFactory()
	{
		SessionFactory buildSessionFactory = new Configuration().configure("org/nlt/controller/hibernate.cfg.xml").buildSessionFactory();
		return buildSessionFactory;
	}
}
