package org.kosta.controller;

import org.kosta.model.CustomerDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyTestController {
   @RequestMapping("hello.do")
   public ModelAndView myTest() {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("result1"); // ViewResolver에 의해 /WEB-INF/views/result1.jsp로 응답한다
      mv.addObject("info", "Hello SpringMVC"); // request.setAttribure ("info","") 와 동일
      return mv;
   }

   // 위의 컨트롤러 개발스타일을 아래와 같이 표현할 수도 있다
   @RequestMapping("hi.do")
   public String hi(Model model) {
      model.addAttribute("info", "Hi SpringMvc   ");
      return "result1";
   }
   
   @RequestMapping("paramTest1.do")
   //@RequestParam :  request.getParameter()의 역할
   //HandlerAdapter(RequestMappingHandlerAdapter) 가 컨트롤러 실행시 
   //매개변수에 알마는 데이터를 생성해 전달해준다 
   //@RequestParam 은 매개변수명이 form data 의 name과 일치한다면 생략이 가능
   //public String paramTest1 (@RequestParam String customerId Model model){
   public String paramTest1(@RequestParam String customerId, Model model) {
      model.addAttribute("customerName","아이유");
      return "result2";
   }
   @RequestMapping("paramTest2.do")
   public String paramTest2(String userName, String userAddress, Model model) {
      model.addAttribute("messages","고객정보 등록완료");
      return "result3";
   }
   
   @RequestMapping("paramTest3.do")
   //HandlerAdapter 가 request.getParameterValues() 처리해서 배열로 전달하다
   public String paramTest3(String[] hobby) {
      for(int i=0; i<hobby.length; i++) {
         System.out.println(hobby[i]);
      }
      return "result4";
   }
   
   
   //spring 4.3 버전 미만일때는 아래와 같이 요청방식을 제한할 수 ㅇㅆ다
   @RequestMapping(method=RequestMethod.POST, value="methodTest1.do")
   public String methodTest1() {
      System.out.println("post 방식만 가능");
      return "result4";
   }
   //spring 4.3 버전 이상일 때는 아래와 같이 더 간단하게 요청방식을 제한할 수 있다
   @PostMapping("methodTest2.do")
   public String methodTest2() {
      return "result4";
   }
   
   //get 방식만 허용하고자 할때, 4.3 이상에서 아래 어노테이션을 지원
   //@GetMapping("paramTest4.do")
   @PostMapping("paramTest4.do")   
   //HandlerAdapter가 아래의 매개변수에 맞게 폼데이터를 객체로 생성해서 전달한다
   public String paramTest4(CustomerDTO customerDTO) { // CustomerDTO 객체는 view에서 소문자로 시작하는 클래스명으로 공유되어 사용가능
	   System.out.println(customerDTO);
      return "result4";
   }
   @PostMapping("redirectTest.do")
   public String redirectTest(CustomerDTO customer) {
	   System.out.println(customer);
	   // 아래 방식은 클라이언트(브라우저)가 직접 jsp에 접근할 수 없도록 구조(WEB-INF 아래)을 정의했으므로 error
	   // 이유는 Front Controller Pattern : 모든 클라이언트의 요청은 DispatcherServlet을 통하도록 해야하므로
//	   return "redirect:result5.jsp";
	   return "redirect:testResult.do?customerId="+customer.getId(); // springmvc에서 redirect 방식으로 응답할 때는 서두에 redirect: 을 명시한다
   }
   @RequestMapping("testResult.do")
   public String testResult(String customerId) {
	   System.out.println(customerId);
	   return "result5";
   }
}








