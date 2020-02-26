package net.codejava;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MemberRepository extends JpaRepository<Member, String> {
	@Query(value = "delete from member where id=?1"
			,nativeQuery = true)
	public Optional<Member> findById(String id);
	
	public boolean existsByEmail(String email);

	public Member findByEmail(String email);
}
