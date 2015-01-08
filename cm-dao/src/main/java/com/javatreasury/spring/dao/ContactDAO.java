package com.javatreasury.spring.dao;

import java.util.List;

import com.javatreasury.spring.model.Contact;



public interface ContactDAO {
	
	public void addContact(Contact contact);
	public List<Contact> listContact();
	public void removeContact(Integer id);
}
