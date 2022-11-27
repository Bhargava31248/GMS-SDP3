package com.example.now;

import java.io.File;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppController 
{
	@Autowired
	private AWSS3Service awsS3Service;
	
	User uu;
	@Autowired
	  private JavaMailSender mailSender;
	
	@Autowired
	Repository2 r;
	
	@Autowired
	Repository5 rr;
	
	@GetMapping("/")
	public String demo(Model m)
	{
		m.addAttribute("command",new User());
		return "demo";
	}
	@GetMapping("/formlog")
	public String formlog(Model m)
	{
		m.addAttribute("command",new User());
		return "login";
	}
	@GetMapping("/admformlog")
	public String admformlog(Model m)
	{
		m.addAttribute("command",new User());
		return "admlog";
	}
	@PostMapping("/insert")
	  public String insert(@ModelAttribute("g") User g,Model m)
	  {
		  m.addAttribute("command",new User());
		  r.save(g);
		  return "login";
	  }
	private Map<Integer,User> mpp=new HashMap();
	@GetMapping("/home")
	public String home(ModelMap m)
	{
		m.addAttribute("un",uu.getEid());
		m.addAttribute("name",uu.getName());
        m.addAttribute("pno",uu.getPno());
        m.addAttribute("dept",uu.getDept());
        m.addAttribute("email",uu.getEmail());
        m.addAttribute("desig",uu.getDesig());
        mpp.put(uu.getEid(), uu);
		return "home";
	}
	@GetMapping("/form")
	public String form(Model m)
	{
		m.addAttribute("command",new User());
		return "reg";
	}
	private Map<Integer,User> mp=new HashMap();
	@PostMapping("/login1")
    public String login1(@ModelAttribute("g") User g,ModelMap m)
    {
      List<User> u=r.findAll();
      for(int i=0;i<r.count();i++)
      {
        User x=u.get(i);
        if(g.getEid()==x.getEid()&&g.getPass().equals(x.getPass()))
        {
        	uu=x;
          m.addAttribute("un",x.getEid());
          m.addAttribute("name",x.getName());
          m.addAttribute("pno",x.getPno());
          m.addAttribute("dept",x.getDept());
          m.addAttribute("email",x.getEmail());
          m.addAttribute("desig",x.getDesig());
          mp.put(x.getEid(), x);
          return "home";
        }
      }
      return "redirect:/formlog";
    }
	private Map<Integer,Comp> mpa=new HashMap();
	 @PostMapping("/login2")
	  public String login2(@ModelAttribute("g") User g,ModelMap m)
	  {
		  List<User> u=r.findAll();
		  for(int i=0;i<r.count();i++)
		  {
			  User x=u.get(i);
			  if(g.getEid()==x.getEid()&&g.getPass().equals(x.getPass()))
			  {
				  List<Comp> cc= rr.findAll();
				  m.addAllAttributes(cc);
				  return "show";
				  
			  }
		  }
		  return "redirect:/admformlog";
	  }
	 @GetMapping("/cform")
		public String cform(Model m)
		{
			m.addAttribute("command",new Comp());
			return "creg";
		}
	 @PostMapping("/cinsert")
	  public String cinsert(@ModelAttribute("g") Comp g,Model m)
	  {
		  m.addAttribute("command",new Comp());
		  rr.save(g);
		  return "succ";
	  }
	 @GetMapping("/compdetails")
		public ModelAndView compdetails()
		{
			ModelAndView mav=new ModelAndView("display");
			mav.addObject("emp",rr.findAll());
			return mav;
		}
	 @GetMapping("/showmycomp")
	    public ModelAndView showmycomp()
	    {
	      ModelAndView mav=new ModelAndView("showmycomp");
	      int a=uu.getEid();
	      mav.addObject("emp",rr.findByEid(a));
	      return mav;
	    }
//	 @PostMapping("/sendmail")
//     public String sendPlainTextEmail(@ModelAttribute("g") User g,Model model) {
//       String from = "GMS";
//       String to = g.getEmail();
//       System.out.println(g.getEmail());
//       SimpleMailMessage message = new SimpleMailMessage();
//       message.setFrom(from);
//       message.setTo(to);
//       message.setSubject("Congratulations");
//       message.setText("Dear User, your complaint resolved succesfully. Please contact HR for more Queries regarding this Grievance");
//       
//       mailSender.send(message);
//       
//       model.addAttribute("message", "A plain text email has been sent");
//       return "show";
//     }
	 @PostMapping("/sendmail")
	  public String sendHTMLEmailWithInlineImage(@ModelAttribute("g") User g,Model model) throws MessagingException {
		 String from = "GMS";
	       String to = g.getEmail();
	    
	    MimeMessage message = mailSender.createMimeMessage();
	    MimeMessageHelper helper = new MimeMessageHelper(message, true);
	    
	    helper.setSubject("Here's your pic");
	    helper.setFrom(from);
	    helper.setTo(to);
	    
	    String content = "Dear User, your complaint resolved succesfully. Please contact HR for more Queries regarding this Grievance"; 
	    helper.setText(content, true);
	    
	    FileSystemResource resource = new FileSystemResource(new File("C:\\Users\\karth\\Downloads\\email.jpg"));
	    helper.addInline("image001", resource);

	    mailSender.send(message);
	    
	    model.addAttribute("message", "An HTML email with inline image has been sent");
	    return "show";    
	  }
	 @GetMapping("/uploader")
	    public String hello() {
	      return "uploader";
	    }

	    @PostMapping("/upload") 
	    public ResponseEntity<?> handleFileUpload( @RequestParam("file") MultipartFile file ) {

	      String fileName = file.getOriginalFilename();
	      try {
	        file.transferTo( new File("F:\\Complaints\\" + fileName));
	      } catch (Exception e) {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	      } 
	      return ResponseEntity.ok("File uploaded successfully.");
	    }
	    @GetMapping("/awsuploader")
	    public String awshello() {
	      return "awsupload";
	    }
	    @PostMapping("/awsupload")
		public ResponseEntity<Map<String, String>> uploadFile(@RequestParam("file") MultipartFile file) {
			String publicURL = awsS3Service.uploadFile(file);
			Map<String, String> response = new HashMap<>();
			response.put("publicURL", publicURL);
			return new ResponseEntity<Map<String, String>>(response, HttpStatus.CREATED);
		}

	 

}

