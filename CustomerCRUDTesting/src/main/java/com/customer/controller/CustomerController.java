package com.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customer.domain.Customer;
import com.customer.service.CustomerService;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;



@Slf4j
@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/joinForm")
	public String customerJoinForm(Model model) {
		return "customer/joinForm";
	}
	
	@PostMapping("/join")
	public String postMethodName(Customer customer, Model model) {
		log.info("Customer INFO = " + customer.toString());
		
		try {
			int count = customerService.insertCustomer(customer);
			if(count > 0) {
				model.addAttribute("coment", "회원가입에 성공하였습니다.");
				return "customer/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("coment", "회원가입에 실패하였습니다.");
		return "customer/failed";
	}
	
	@GetMapping("/loginForm")
	public String customerLoginForm(Model model) {
		return "customer/loginForm";
	}
	
	@GetMapping("/searchIdForm")
	public String searchIdForm(Model model) {
		return "customer/searchIdForm";
	}
	
	@GetMapping("/searchPwForm")
	public String searchPwForm(Model model) {
		return "customer/searchPwForm";
	}
	
	@PostMapping("/searchId")
	public String searchId(Customer customer, Model model) {
		log.info("Customer INFO = " + customer.toString());
		
		try {
			Customer c = customerService.serchById(customer);
			if(c != null) {
				model.addAttribute("coment", "회원님의 아이디는 [ %s ] 입니다.".formatted(c.getId()));
				return "customer/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("coment", "입력하신 정보의 아이디가 존재하지 않습니다.");
		return "customer/failed";
	}
	
	@PostMapping("/searchPw")
	public String searchPw(Customer customer, Model model) {
		log.info("Customer INFO = " + customer.toString());
		
		try {
			Customer c = customerService.serchByPw(customer);
			if(c != null) {
				model.addAttribute("customer",c);
				return "customer/resetPw";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("coment", "입력하신 정보가 존재하지 않습니다.");
		return "customer/failed";
	}
	
	@PostMapping("/updatePw")
	public String updatePw(Customer customer, Model model) {
		log.info("Customer INFO = " + customer.toString());
		
		try {
			int count = customerService.updateCustomerPw(customer);
			if(count > 0) {
				model.addAttribute("coment", "비밀번호 변경에 성공했습니다.");
				return "customer/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("coment", "비밀번호 변경에 실패하였습니다.");
		return "customer/failed";
	}
	
	@PostMapping("/login")
	public String customerLogin(Model model, Customer customer, HttpSession session) {
		log.info("Customer INFO = " + customer.toString());
		
		try {
			Customer c = customerService.customerLogin(customer);
			if(c != null) {
				session.setAttribute("loginUser", c);
				return "redirect:/customer/mainPage";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("coment", "아이디 또는 비밀번호가 일치하지 않습니다.");
		return "customer/failed";
	}
	
	@GetMapping("/mainPage")
	public String mainPage() {
	    // 세션에 정보가 있으니 Model에 담지 않아도 JSP에서 loginUser로 꺼낼 수 있습니다.
	    return "mainPage"; // customer/mainPage.jsp를 호출
	}
	
	@GetMapping("/mypage")
	public String myPage(HttpSession session, Model model) {
	    if (session.getAttribute("loginUser") == null) {
	        return "redirect:/customer/loginForm"; // 로그인 안 됐으면 로그인 페이지로
	    }
	    session.getAttribute("loginUser");
	    return "customer/mypage";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	    session.invalidate(); // 세션 정보를 모두 제거
	    return "redirect:/customer/loginForm"; // 로그인 페이지로 이동
	}
	
	@GetMapping("/editForm")
	public String getMethodName(HttpSession session) {
		session.getAttribute("loginUser");
		return "customer/editForm";
	}
	
	@PostMapping("/update")
	public String customerUpdate(Customer customer, HttpSession session, Model model) {
		log.info("Customer INFO = " + customer.toString());
		
		try {
			session.setAttribute("loginUser", customer);
			int count = customerService.updateCustomer(customer);
			if(count > 0) {
				return "redirect:/customer/mypage";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("coment", "회원가입에 실패하였습니다.");
		return "customer/failed";
	}
	
	@GetMapping("/withdraw")
	public String withdraw(HttpSession session, Model model) {
		Customer customer = (Customer)session.getAttribute("loginUser");
		
		if (customer == null) {
	        return "redirect:/customer/loginForm"; // 로그인 안 되어있으면 로그인창으로
	    }
	    
	    try {
	        // 2. DB에서 삭제를 진행합니다.
	        int count = customerService.deleteCustomer(customer);
	        
	        if(count > 0) {
	            // 3. 삭제 성공 시 세션을 무효화(로그아웃) 시킵니다.
	            session.invalidate();
	            
	            // 4. 탈퇴 성공 후에는 로그인 페이지나 안내 페이지로 보냅니다.
	            return "redirect:/customer/loginForm"; 
	        }
	    } catch (Exception e) {
	        e.printStackTrace(); // e.addSuppressed 보다는 원인 파악을 위해 e.printStackTrace()가 좋습니다.
	    }
	    
	    model.addAttribute("coment", "회원탈퇴에 실패하였습니다.");
	    return "customer/failed";
	}
	
}
