package com.dhan.controller;

/*import com.dhan.model.*;
import com.dhan.service.*;
import org.springframework.beans.factory.annotation.Autowired;*/
/*import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;*/
import com.dhan.model.*;
import com.dhan.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/*import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;*/
import java.security.Principal;
import java.util.Collection;

@Controller
@RequestMapping("/")
public class HelloController {

    /*@RequestMapping(method = RequestMethod.GET)
	public String printWelcome() {
		model.addAttribute("message", "Hello world!");
		return "index";
	}*/

   /* @RequestMapping(value="/save",method = RequestMethod.POST)
    public String printWelcoe(HttpServletRequest request,ModelMap model) {

        System.out.println("in save method");
        String name=request.getParameter("Fname");
        System.out.println("in save request "+name);
        model.addAttribute("userName",name );
        return "index";
    }*/

   /* @RequestMapping("/403")
    public String printWelco() {
        System.out.println("in 403 request");
        return "index";
    }*/


    String name,fatherName,gender,dob,nationality,enabled,streetAddress,address1,
            city,pincode,state,emailId,password,motherName,alternativeEmailId,
            mobileNumber,homeContact,officeContact,nickName;

    /*private String host="smtp.gmail.com";*//*mail.careerguru4you.in*//*
    private String portNo="587";
    private String user="www.ghochu.prasad@gmail.com";
    private String pass="paytm13121989krishna123";*/

    @Autowired
    private UsersProfileService usersProfileService;
    @Autowired
    private ContactUsService contactUsService;
    @Autowired
    private FeedbackService feedbackService;
    @Autowired
    private ServiceCityService serviceCityService;
    @Autowired
    private ApplyForLoanService applyForLoanService;
    @Autowired
    private IntrestInInvestService intrestInInvestService;


    @GetMapping({"/","/index"})
    public String showHome(ModelMap model) {
        model.addAttribute("world","krishna");
        return "index";
    }

    @GetMapping("/welcome")
    public String showWelcome()
    {
        return "welcome";
    }

    @GetMapping("/msg")
    public String showMsg()
    {
        return "msg";
    }

    @GetMapping("/borrower")
    public String showBorrower()
    {
        return "borrower";
    }

    @GetMapping("/lender")
    public String showLender()
    {
        return "lender";
    }

    @GetMapping("/faq")
    public String showFAQ()
    {
        return "faq";
    }

    @GetMapping("/aboutUs")
    public String showAboutUs()
    {
        return "aboutUs";
    }

    @GetMapping("/mgt")
    public String showMgt()
    {
        return "mgt";
    }

    @GetMapping("/roles")
    public String showRoles()
    {
        return "roles";
    }

    @GetMapping("/terms")
    public String showTerms()
    {
        return "terms";
    }

    @RequestMapping(value="/signUp",method=RequestMethod.GET)
    public String showSignUp()
    {
        return "signUp";
    }

    @GetMapping("/applyForLoan")
    public String showApplyForLoan()
    {
        return "applyForLoan";
    }




    /*@PostMapping(value="/saveUser")
    public String saveUsersProfile(HttpServletRequest request,ModelMap model)
    {
        try
        {
            UsersProfile usersProfile=new UsersProfile();
            *//*name=;
            fatherName=;
            gender=;
            dob=;
            nationality=;
            streetAddress=;
            address1=;
            city=;
            pincode=;
            state=;
            password=;
            enabled=;
            motherName=;
            alternativeEmailId=;
            mobileNumber=;
            homeContact=;
            officeContact=;
            nickName=;*//*

            emailId=request.getParameter("email");

            usersProfile.setMotherName(request.getParameter("motherName"));
            usersProfile.setAlternateEmailId(request.getParameter("alternateEmail"));
            usersProfile.setMobile(request.getParameter("mobile"));
            usersProfile.setHomeContact(request.getParameter("homeContact"));
            usersProfile.setOfficeContact(request.getParameter("officeContact"));
            usersProfile.setNickName(request.getParameter("nickName"));
            usersProfile.setFullName(request.getParameter("fullName"));
            usersProfile.setFatherName(request.getParameter("fatherName"));
            usersProfile.setSex(request.getParameter("gender"));
            usersProfile.setDob(request.getParameter("dob"));
            usersProfile.setStreetAddress(request.getParameter("streetAddress"));
            usersProfile.setAddress(request.getParameter("address1"));
            usersProfile.setCity(request.getParameter("city"));
            usersProfile.setPincode(request.getParameter("pincode"));
            usersProfile.setState(request.getParameter("state"));


            usersProfile.setEnabled(request.getParameter("enabled")!=null);

            usersProfile.setNationality("INDIAN");
            usersProfile.setCountry("INDIA");
            usersProfile.setEmailId(emailId);
            usersProfile.setPassword(request.getParameter("password"));
            usersProfile.setAuthority("ROLE_USER");
            usersProfileService.saveUsersProfile(usersProfile);

            String recipient=emailId;
            String subject="DHANGURU";
            String content="Thankyou For Register in DHANGURU, Your User Name is "+emailId;

            try
            {
                System.out.println("calling send mail method********* ");
                EmailUtility.sendEmail(host, portNo, user, pass, recipient, subject,content);
                System.out.println("calling send mail method is DONEEEEEEE****************");
                model.addAttribute("created","krishna");

            }
            catch(Exception ex)
            {
                ex.printStackTrace();

            }
        }
        catch(Exception ex)
        {
            System.out.println("in catch "+ex.getMessage());
        }
        //return "login";
        return "welcome";
    }*/


    /*@PostMapping(value="/testingMail")
    public String testingMail(ModelMap model)
    {
        try
        {
            emailId="krishna.kapoor337@gmail.com";
            String recipient=emailId;
            String subject="DHANGURU";
            String content="Thankyou For Register in DHANGURU, Your User Name is "+emailId;
            try
            {
                System.out.println("calling send mail method********* ");
                EmailUtility.sendEmail(host, portNo, user, pass, recipient, subject,content);
                System.out.println("calling send mail method is DONEEEEEEE****************");
                model.addAttribute("created","krishna");
            }
            catch(Exception ex)
            {
                ex.printStackTrace();
            }
        }
        catch(Exception ex)
        {
            System.out.println("in catch "+ex.getMessage());
        }
        //return "login";
        return "welcome";
    }*/


    /*@PostMapping(value="/contactUs")
    public String saveContactUsData(HttpServletRequest request)
    {
        String email;
        *//*name=;
        phone=;*//*
        email=request.getParameter("email");
        *//*subjectEnqiry=;
        query=;*//*

        ContactUs contactUs=new ContactUs();
        contactUs.setName(request.getParameter("name"));
        contactUs.setMobileNumber(request.getParameter("phone"));
        contactUs.setEmailId(email);
        contactUs.setSubjectEnquiry(request.getParameter("subjectEnqiry"));
        contactUs.setQuery(request.getParameter("query"));
        contactUsService.saveContactUs(contactUs);

        String recipient=email;
        String subject="DHANGURU";
        String content="Thankyou For Contacting Us, soon Our Executive contact You";

        try
        {
            System.out.println("calling send mail method********* ");
            EmailUtility.sendEmail(host, portNo, user, pass, recipient, subject,content);
            System.out.println("calling send mail method is DONEEEEEEE****************");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return "redirect:/index";
    }*/


    /*@PostMapping(value="/replyContactUs/{emailId}/{subjectEnquiry}")
    public String replyContactUs(@PathVariable("emailId")String emailId,@PathVariable("subjectEnquiry")String subjectEnquiry,HttpServletRequest request)
    {
        String replyText=request.getParameter("replyText");
        System.out.println("replyText "+replyText);
        System.out.println("recipent email id"+emailId);
        System.out.println("subjectFeedback is "+subjectEnquiry);
        String recipient=emailId;
        String subject="DHANGURU - "+subjectEnquiry;
        String content=replyText;

        try
        {
            System.out.println("calling send mail method********* ");
            EmailUtility.sendEmail(host, portNo, user, pass, recipient, subject,content);
            System.out.println("calling send mail method is DONEEEEEEE****************");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return "redirect:/index";
    }*/



    @GetMapping(value="/showContactUsDetails/{id}")
    public String showContactUsDetails(@PathVariable("id")Integer id,ModelMap model)
    {
        ContactUs contactUs=contactUsService.getContactUsById(id);
        model.addAttribute("contactUs",contactUs);
        return "contactUsDetails";
    }


    /*@PostMapping(value="/verifyServiceCity")
    public String availabilityOfServiceCity(HttpServletRequest request,ModelMap model)
    {
        String pincode=request.getParameter("verifyPincode");
        System.out.println("verify pincode is "+pincode);
        try
        {
            ServiceCity serviceCity = serviceCityService.getServiceCityByPincode(pincode);
            if(serviceCity!=null)
            {
                System.out.println(serviceCity.getServiceCity());
                model.addAttribute("available","Service Is Available...!!!!");
            }
            else
            {
                model.addAttribute("available","Service Is NOT Available...!!!!");
            }
        }
        catch(Exception ex)
        {
            System.out.println("ex : "+ex.getMessage());
        }
        return "index";
    }*/


    /*@PostMapping(value="/feedback")
    public String saveFeedback(HttpServletRequest request)
    {
        String name=request.getParameter("name");
        String phoneNo=request.getParameter("phone");
        String emailId=request.getParameter("email");
        String subjectFeedback=request.getParameter("subjectFeedback");
        String textFeedback=request.getParameter("feedbackText");

        Feedback feedback=new Feedback();
        feedback.setName(name);
        feedback.setPhoneNumber(phoneNo);
        feedback.setEmailId(emailId);
        feedback.setSubjectFeedback(subjectFeedback);
        feedback.setFeedbackText(textFeedback);

        feedbackService.saveFeedback(feedback);

        String recipient=emailId;
        String subject="DHANGURU";
        String content="Thankyou For Visiting";

        try
        {
            System.out.println("calling send mail method********* ");
            EmailUtility.sendEmail(host, portNo, user, pass, recipient, subject,content);
            System.out.println("calling send mail method is DONEEEEEEE****************");

        }
        catch(Exception ex)
        {
            ex.printStackTrace();

        }
        return "redirect:/index";
    }*/




    @GetMapping(value="/showFeedbackDetails/{id}")
    public String showFeedbackDetails(@PathVariable("id")Integer id,ModelMap model)
    {
        Feedback feedback=feedbackService.getFeedbackById(id);
        model.addAttribute("feedback",feedback);
        return "feedbackDetails";
    }


    /*@PostMapping(value="/replyFeedback/{emailId}/{subjectFeedback}")
    public String replyFeedback(@PathVariable("emailId")String emailId,@PathVariable("subjectFeedback")String subjectFeedback,HttpServletRequest request)
    {
        String replyText=request.getParameter("replyText");
        System.out.println("replyText "+replyText);
        System.out.println("recipent email id"+emailId);
        System.out.println("subjectFeedback is "+subjectFeedback);

        String recipient=emailId;
        String subject="DHANGURU - "+subjectFeedback ;
        String content=replyText;

        try
        {
            System.out.println("calling send mail method********* ");
            EmailUtility.sendEmail(host, portNo, user, pass, recipient, subject,content);
            System.out.println("calling send mail method is DONEEEEEEE****************");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return "redirect:/index";
    }


    @RequestMapping(value="/forgotPassword")
    public String showForgotPassword()
    {
        return "fPassword";
    }

*/




    /*@PostMapping(value="/getPassword")
    public String getPassword(HttpServletRequest request,ModelMap model) {
        String regEmail, password;
        regEmail = request.getParameter("registerEmail");
        System.out.println("regEmail id from UI    " + regEmail);
        UsersProfile usersProfile = usersProfileService.getUsersProfileByEmail(regEmail);
        if (usersProfile != null) {
            password = usersProfile.getPassword();
            String recipient = regEmail;
            String subject = "your Password";
            String content = password;
            try {
                System.out.println("calling send mail method********* ");
                EmailUtility.sendEmail(host, portNo, user, pass, recipient, subject, content);
                System.out.println("calling send mail method is DONEEEEEEE****************");
                model.addAttribute("msg", "Please Check Your Registered Email Id for get Password");
                return "fPassword";
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            return "fPassword";
        } else {
            model.addAttribute("msg", "You enter Wrong Email Id");
            return "fPassword";
        }
    }*/



    /*@GetMapping("/checkSecurityKey/{id}")
    public String checkSecurityKey(@PathVariable("id") Integer id,ModelMap model,HttpServletRequest request) {

        String securityKey=request.getParameter("securityKey");


        System.out.println("calling of get security key");
        ApplyForLoan applyForLoan=applyForLoanService.getApplyForLoanBySecurityKey(securityKey, id);
        String checking=applyForLoan.getEmailId();
        if(checking.equals("nothing"))
        {
            model.addAttribute("notMatch","You Enter Wrong Security Key");
            return "wrongSecurityKey";
        }
        else
        {
            model.addAttribute("applyForLoan",applyForLoan);
            return "applyForLoanDetails";
        }
    }*/






    @GetMapping("/investerDetails/{id}")
    public String showInvesterDetails(@PathVariable("id") Integer id,ModelMap model) {
        IntrestInInvest intrestInInvest=intrestInInvestService.getIntrestInInvestById(id);
        System.out.println("email id from IntrestInInvest   :  "+intrestInInvest.getInvestorEmail());
        UsersProfile usersProfile=usersProfileService.getUsersProfileByEmail(intrestInInvest.getInvestorEmail());
        model.addAttribute("usersProfile",usersProfile);
        return "investerDetails";
    }








    /*@RequestMapping(value="/login")
    public String showLogin(@RequestParam(value="error",required=false)String error,ModelMap model, @RequestParam(value="logout",required=false)String logout)
    {
        if(error!=null)
        {
            model.addAttribute("error", "Invalid username and password");
        }
        if(logout!=null)
        {
            model.addAttribute("msg", "You've been logged out successfully.");
        }
        return "login";
    }*/


    /*@GetMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/index?logout";
    }*/



    @GetMapping(value = "/403")
    public String accesssDenied(Principal user,ModelMap model) {
        if (user.getName() != null) {
            model.addAttribute("msg", "Hi " + user.getName()
                    + ", you do not have permission to access this page!");
        } else {
            model.addAttribute("msg","You do not have permission to access this page!");
        }
        return "403";
    }




    /*@GetMapping(value = "/profile")
    public String my(Authentication authentication) {
        boolean isUser = false;
        boolean isAdmin = false;
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        for (GrantedAuthority grantedAuthority : authorities) {
            if (grantedAuthority.getAuthority().equals("ROLE_USER")) {
                isUser = true;
                break;
            } else if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
                isAdmin = true;
                break;
            }
            }
        if (isUser) {
            return "redirect:/user/profile";
        } else if (isAdmin) {
            return "redirect:/admin";
        } else {
            throw new IllegalStateException();
        }
    }*/
}