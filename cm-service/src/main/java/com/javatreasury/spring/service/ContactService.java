package com.javatreasury.spring.service;

import java.util.List;

import com.javatreasury.spring.model.Contact;


public interface ContactService {
	
	public void addContact(Contact contact);
	public List<Contact> listContact();
	public void removeContact(Integer id);
}
