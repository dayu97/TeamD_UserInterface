package kr.co.Dr_Link.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.Dr_Link.mvc.dao.DoctorDaoInter;
import kr.co.Dr_Link.mvc.dao.PrescriptionDaoInter;
import kr.co.Dr_Link.mvc.dto.DoctorDTO;
import kr.co.Dr_Link.mvc.dto.DrLinkDTO;
import kr.co.Dr_Link.mvc.dto.MedicineDTO;
import kr.co.Dr_Link.mvc.dto.PatientDTO;
import kr.co.Dr_Link.mvc.dto.PrescriptionDTO;

@Controller
@RequestMapping(value = "/doctor")
public class DoctorController {

	@Autowired	
	private PrescriptionDaoInter pre_dao;
	private DoctorDaoInter doc_dao;
	
	@RequestMapping(value = "{step}")
	public String accessAnyFiles(@PathVariable String step) {
		System.out.println("doctor 컨트롤러 실행");
		return "/doctor/"+step;
	}
	
	/* 배열 붙이는 메소드 */
	public static String arrayJoin(String glue, String array[]) {
	    String result = "";

	    for (int i = 0; i < array.length; i++) {
	      result += array[i];
	      if (i < array.length - 1) result += glue;
	    }
	    return result;
	  }
	

	@RequestMapping(value = "/login")
	public String login() {
		System.out.println("로그인");
		return "login";
	}

	@RequestMapping(value = "/add_prescription") 
	public String add_prescription(DrLinkDTO drLinkVo, PatientDTO patientVo,DoctorDTO doctorVo, MedicineDTO mediVo, Model model, HttpSession session) {
		System.out.println("처방입력 페이지로 이동");
		session.setAttribute("d_id", "doctor_test1");

		/* 로그인 한 의사의 아이디를 받아서 vo로 넘기기 */
		String d_id = (String)session.getAttribute("d_id");
		PatientDTO patientinfo = pre_dao.prescription_info(patientVo);
		DrLinkDTO drLinkinfo = pre_dao.prescription_info(drLinkVo);
		DoctorDTO doctorinfo = pre_dao.prescription_info(d_id);
		List<MedicineDTO> medicine_info = pre_dao.medicine_info(mediVo);

		model.addAttribute("patientinfo",patientinfo);
		model.addAttribute("doctorinfo",doctorinfo);
		model.addAttribute("drLinkinfo",drLinkinfo);
		model.addAttribute("medicine_info",medicine_info);
		System.out.println("controller drLink_info 실행 완료");
		return "/doctor/add_prescription";
	}
	
	
	@RequestMapping(value = "/end_prescription", method = RequestMethod.POST) 
	public String end_prescription(PrescriptionDTO vo,HttpServletRequest request) {
		System.out.println("end 로 들어옴");
		System.out.println("vo로 뽑은 값: " + vo.getQuantity()[0]);
		if(vo.getQuantity().length > 1) {
			System.out.printf("컨트롤러 if문 안 배열 길이 %d", vo.getQuantity().length);
		}
		System.out.println("처방입력 완료");
		//pre_dao.insertPrescription(vo);
		System.out.println(" controller insertPrescription 실행 완료");	    
		return "/doctor/end_prescription";
		/*
		String [] qty = request.getParameterValues("quantity");
		String [] dsg = request.getParameterValues("dosage");
		String [] dys = request.getParameterValues("days");
		System.out.println("quantity "+ request.getParameterValues("quantity"));
		System.out.println("dosage "+ request.getParameterValues("dosage"));
		System.out.println("days "+request.getParameterValues("days"));
		*/
		/*
		System.out.println("vo로 뽑은 값: " + vo.getQuantity());
		for (int i=0; i<vo.getQuantity().length; i++) {
			System.out.println("for문 안 vo로 뽑은 값: " + vo.getQuantity()[i]);
		}
		/*
		for(int i = 0 ; i<qty.length ; i++) {
			System.out.println(qty[i]);
			System.out.println(dsg[i]);
			System.out.println(dys[i]);
		}
		String quantity = arrayJoin(",", qty);
		String dosage = arrayJoin(",", dsg);
		String days = arrayJoin(",", dys);
		
		System.out.println("붙였다! " + quantity);
		System.out.println("붙였다! " + dosage);
		System.out.println("붙였다! " + days);
		/*
		vo.setQuantity(quantity);
		vo.setDosage(dosage);
		vo.setDays(days);
		*/
		
	}

	
	@RequestMapping(value = "/setting_ok" )
	public String setting_ok(DoctorDTO vo, HttpServletRequest req, HttpServletResponse resp){
		System.out.println("*****setting_ok 실행*****");
		/*
		 * for(String a : vo.getD_graduation()) {
		 * System.out.println("getD_graduation 반복문 : " + a); } for(String a :
		 * vo.getD_school()) { System.out.println("getD_school 반복문  : " + a); }
		 * for(String a : vo.getD_whengrad()) {
		 * System.out.println("getD_whengrad 반복문  : " + a); }
		 */
		 
		System.out.println(vo.getD_graduation());
		doc_dao.doctor_profile_update(vo);
		return "/doctor/doctor-dashboard";
		}
		
		/*
		 * Enumeration<String> params = req.getParameterNames();
		 * System.out.println("----------------------------"); while
		 * (params.hasMoreElements()){ String name = (String)params.nextElement();
		 * System.out.println(name + " : " +req.getParameter(name)); }
		 * System.out.println("----------------------------");
		 */
	
}
