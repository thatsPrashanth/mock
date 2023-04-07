package pgms;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	User user;

	@Autowired
	UserDao dao;

	@RequestMapping("/insert")
	public ModelAndView insert() {
		ModelAndView mv = new ModelAndView("insert.jsp");
		mv.addObject("formKey", user);
		return mv;
	}

	@ResponseBody
	@RequestMapping("/insertjsp")
	public void insert(User user) {
		dao.insert(user);
	}

	@RequestMapping("/remove")
	public ModelAndView remove() {
		ModelAndView mv = new ModelAndView("remove.jsp");
		mv.addObject("formKey", user);
		return mv;
	}

	@ResponseBody
	@RequestMapping("/removejsp")
	public void remove(User user) {
		dao.remove(user.getUser_mail());
	}

	@ResponseBody
	@RequestMapping("/fetchall")
	public ModelAndView fetchall(User user) {
		List<User> data = dao.fetchAll();
		ModelAndView mv = new ModelAndView("fetchall.jsp");
		mv.addObject("requestKey", data);
		return mv;
	}
}
