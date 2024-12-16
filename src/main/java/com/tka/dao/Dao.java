package com.tka.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.entity.Candidate;

@Repository
public class Dao {

	@Autowired
	private SessionFactory sf;

	public String addCandidate(Candidate can) {
		try {

			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			session.save(can);
			tx.commit();
			String msg = "Candidate added successfully.";
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Somthing went wrong.";
			return msg;
		}
	}

	public List<Candidate> displayCandidate() {
		List<Candidate> plist = null;
		try {

			Session session = sf.openSession();
			Criteria criteria = session.createCriteria(Candidate.class);
			plist = criteria.list();

			return plist;
		} catch (Exception e) {

			e.printStackTrace();
			String msg = "Somthing went wrong.";
			return plist;
		}
	}

	public Candidate getCandidate(int pk) {
		Candidate can = null;
		try {

			Session session = sf.openSession();
			can = session.get(Candidate.class, pk);
			return can;
		} catch (Exception e) {

			e.printStackTrace();
			return can;
		}
	}

	public String deleteCandidate(int pk) {

		Candidate can = null;
		try {

			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			can = session.get(Candidate.class, pk);
			session.delete(can);
			tx.commit();
			String msg = "Candidate deleted successfully.";
			return msg;
		} catch (Exception e) {

			e.printStackTrace();
			String msg = "Somthing went wrong.";
			return msg;
		}

	}

	public String updateCandidate(Candidate can) {
		try {

			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			session.saveOrUpdate(can);
			tx.commit();
			String msg = "Candidate Updated successfully.";
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Somthing went wrong.";
			return msg;
		}
	}

	public List<Candidate> SearchCandidateByName(String nm) {
		List<Candidate> candidates = null;
		try {
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			Criteria criteria = session.createCriteria(Candidate.class);

			criteria.add(Restrictions.like("name", "%" + nm + "%"));

			candidates = criteria.list();
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return candidates;
	}

}