package com.tka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tka.dao.Dao;
import com.tka.entity.Candidate;

@org.springframework.stereotype.Service
public class Service {

	@Autowired
	private Dao dao;

	public String addCandidate(Candidate can) {
		String msg = dao.addCandidate(can);
		return msg;
	}

	public List<Candidate> displayCandidate() {

		List<Candidate> plist = dao.displayCandidate();
		return plist;
	}

	public String deleteCandidate(int pk) {
		String res = dao.deleteCandidate(pk);
		return res;
	}

	public Candidate getCandidate(int pk) {
		Candidate can = dao.getCandidate(pk);
		return can;
	}

	public String updateCandidate(Candidate can) {
		String msg = dao.updateCandidate(can);
		return msg;
	}

	public List<Candidate> SearchCandidateByName(String nm) {
		return dao.SearchCandidateByName(nm);
	}
}
