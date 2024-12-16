package com.tka.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.dao.ContactDao;
import com.tka.entity.Contact;

@Service
public class ContactService {

	@Autowired
	ContactDao cd;

	public String setContactDetails(Contact c) {

		return cd.setContactDetails(c);
	}

}
