package com.tka.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.entity.Contact;

@Repository
public class ContactDao {

	@Autowired
	SessionFactory sf;

	public String setContactDetails(Contact c) {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(c);
		tx.commit();
		session.close();
		return "Your Request Sended Successfully.";
	}
}
