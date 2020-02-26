package net.codejava;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppController {

	@Autowired
	private MemberService service;
	@Autowired
	private MemberRepository repo;

	@RequestMapping("/")
	public ModelAndView viewHomePage() {

		return new ModelAndView("homepage");
	}

	@RequestMapping("/login")
	public ModelAndView viewLoginPage() {

		return new ModelAndView("login");
	}

	@RequestMapping("/members")
	public String viewHomePage1(Model model) {
		List<Member> memberslist = service.listAll();
		model.addAttribute("memberslist", memberslist);

		return "index";
	}

	@RequestMapping("/singnup")
	public ModelAndView showSingupPage(@ModelAttribute Member member) {

		return new ModelAndView("singnup", "member", member);
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveMember(@ModelAttribute("member") Member member) {
		service.save(member);

		return "redirect:/login";
	}

	@RequestMapping("/edit/{id}")
	public ModelAndView showEditProductPage(@PathVariable(name = "id") String id) {

		return new ModelAndView("edit_member", "member", service.get(id));
	}

	@RequestMapping("/delete/{id}")
	public String deleteMember(@PathVariable(name = "id") String id) {
		service.delete(id);
		return "redirect:/";
	}
}
