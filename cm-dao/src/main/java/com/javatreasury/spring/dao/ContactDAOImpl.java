package com.javatreasury.spring.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javatreasury.spring.model.Contact;



@Repository
public class ContactDAOImpl implements ContactDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addContact(Contact contact) {
		sessionFactory.getCurrentSession().save(contact);
	}

	public List<Contact> listContact() {
		Query query =  (Query) sessionFactory.getCurrentSession().createQuery("from Contact");
		List<Contact> contactList = query.getResultList();
		for (Contact con : contactList){
			System.out.println("Id : "+con.getId());
			System.out.println("Fname : "+con.getFirstname());
			System.out.println("Lname : "+con.getLastname());
			System.out.println("Tel : "+con.getTelephone());
			System.out.println("Email : "+con.getEmail());
		}
		return contactList;
	}

	public void removeContact(Integer id) {
		Contact contact = (Contact) sessionFactory.getCurrentSession().load(
				Contact.class, id);
		if (contact != null) {
			sessionFactory.getCurrentSession().delete(contact);
		}

	}
}
