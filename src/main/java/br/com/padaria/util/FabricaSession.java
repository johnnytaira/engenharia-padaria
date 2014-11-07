package br.com.padaria.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FabricaSession {
	public static Session getSession(){
		Configuration configuration = new Configuration();
	
		configuration.configure();
		SessionFactory factory = configuration.buildSessionFactory();
		Session session = factory.openSession();
		return session;
	}

}
