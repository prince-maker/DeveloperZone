package net.codejava;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MemberService {

	@Autowired
	private MemberRepository repo;
//	@Autowired(required=true)
//	private BCryptPasswordEncoder encoder;
	
	
	public List<Member> listAll() {
		return repo.findAll();
	}
	
	public void save(Member member) {
		
				member.setId(Utils.generateId());
				//member.setPassword( new BCryptPasswordEncoder() .encode(member.getPassword()));
		repo.save(member);
	
	
		
	}
	
	public Member get(String id) {
		return repo.findById(id).get();
	}
	
	public void delete(String id) {
		repo.findById(id);
	}

	public Member findByEmail(String email) {
		return repo.findByEmail(email);
	}
}
