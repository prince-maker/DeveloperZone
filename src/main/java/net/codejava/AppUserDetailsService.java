package net.codejava;

import java.util.Collection;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
@Component
public class AppUserDetailsService implements UserDetailsService {
	@Autowired
	private MemberService service;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Member member = service.findByEmail(email);
		return new UserPricipal(member);
	}

	private class UserPricipal implements UserDetails {

		private Member member;

		public UserPricipal(Member member) {
			super();
			this.member = member;
		}

		@Override
		public Collection<? extends GrantedAuthority> getAuthorities() {
			
			return Collections.singleton(new SimpleGrantedAuthority("USER"));
		}

		@Override
		public String getPassword() {
			
			return member.getPassword();
		}

		@Override
		public String getUsername() {
			
			return member.getEmail();
		}

		@Override
		public boolean isAccountNonExpired() {
			// TODO Auto-generated method stub
			return true;
		}

		@Override
		public boolean isAccountNonLocked() {
			// TODO Auto-generated method stub
			return true;
		}

		@Override
		public boolean isCredentialsNonExpired() {
			// TODO Auto-generated method stub
			return true;
		}

		@Override
		public boolean isEnabled() {
			// TODO Auto-generated method stub
			return true;
		}
	}

}
