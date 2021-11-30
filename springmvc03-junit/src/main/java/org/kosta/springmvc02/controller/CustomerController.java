package org.kosta.springmvc02.controller;

import org.kosta.springmvc02.model.dto.CustomerDTO;
import org.kosta.springmvc02.model.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {
	private CustomerMapper customerMapper;
	@Autowired
	public CustomerController(CustomerMapper customerMapper) {
		super();
		this.customerMapper = customerMapper;
	}
	
	@RequestMapping("getTotalCustomerCount.do")
	public String getTotalCustomerCount(Model model) {
		model.addAttribute("totalCount",customerMapper.getTotalCustomerCount());
		return "customer-count";
	}
	
	@RequestMapping("findCustomerById.do")
	public String findCustomerById(String id,Model model) {
		String viewName = null;
		CustomerDTO customerDTO = customerMapper.findCustomerById(id);
		if(customerDTO==null) {
			viewName = "findbyid-fail";
		}else {
			model.addAttribute("customerDTO",customerDTO);
			viewName = "findbyid-success";
		}
		return viewName;
	}
	
	@PostMapping("registerCustomer.do")
	public String registerCustomer(CustomerDTO customerDTO, Model model) {
		String viewName = null;
		//중복확인
		if(customerMapper.findCustomerById(customerDTO.getId())==null) {
			customerMapper.registerCustomer(customerDTO);
			viewName = "redirect:registerResult.do";
		}else {
			viewName = "duplicate-id";
		}
		return viewName;
	}
	@GetMapping("registerResult.do")
	public String registerResult() {
		return "register-success";
	}
}
