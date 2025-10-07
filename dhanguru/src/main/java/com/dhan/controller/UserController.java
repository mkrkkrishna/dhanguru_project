package com.dhan.controller;


import com.dhan.model.*;
import com.dhan.service.*;
//import com.dhan.utility.EmailUtility;
//import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
//import org.springframework.web.multipart.commons.CommonsMultipartFile;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Principal;
import java.util.List;
import java.util.Random;


@Controller
@RequestMapping("/user")
public class UserController {

    private String host="smtp.gmail.com";
    private String portNo="587";
    private String user="www.ghochu.prasad@gmail.com";
    private String pass="";

    @Autowired
	private UsersProfileService usersProfileService;
	@Autowired
	private ApplyForLoanService applyForLoanService;
    @Autowired
    private IntrestInInvestService intrestInInvestService;
    @Autowired
    private FixedInvesterService fixedInvesterService;
    @Autowired
    private SavePaymentService savePaymentService;

    static byte n=1,n2=2;

	
    @GetMapping(value="/profile")
    public String showProfile(ModelMap model,Principal principal)
    {
        String email=principal.getName();

        List<ApplyForLoan> applyForLoanList= applyForLoanService.listPendingApplyForLoanByEmail(email);

        model.addAttribute("applyForLoanList", applyForLoanList);
        return "profile";
    }


    @GetMapping(value="/myPersonalData")
    public String showPersonalData(ModelMap model,Principal principal)
    {
        String email=principal.getName();
        System.out.println("email id with login"+email);
        UsersProfile usersProfile=usersProfileService.getUsersProfileByEmail(email);

        model.addAttribute("usersProfile",usersProfile);
        return "personalData";
    }

    @GetMapping("/securityKey/{id}")
    public String openSecurityKeyPage(@PathVariable("id") Integer id,ModelMap model) {
        model.addAttribute("id",id);
        return "enterSecurityKey";
    }


    @GetMapping("/applyForLoanList")
    public String showApplyForLoanList(ModelMap model,Principal principal)
    {
        String email=principal.getName();
        System.out.println("email id with login"+email);
        UsersProfile usersProfile=usersProfileService.getUsersProfileByEmail(email);
        model.addAttribute("usersProfile",usersProfile);


        List<ApplyForLoan> applyForLoanList= applyForLoanService.listPendingApplyForLoan();
        model.addAttribute("applyForLoanList", applyForLoanList);

        return "applyForLoanList";
    }




    /*@RequestMapping(value="/saveIntrestInInvest",method=RequestMethod.POST)
    public String showIntrestInInvestList(HttpServletRequest request,Principal principal)
    {
        String loanId=request.getParameter("loanId");
        String investerEmail=principal.getName();
        Integer investingAmount=Integer.parseInt(request.getParameter("investingAmount"));

        IntrestInInvest intrestInInvest=new IntrestInInvest();

        intrestInInvest.setInvestorEmail(investerEmail);
        intrestInInvest.setLoanId(loanId);
        intrestInInvest.setInvestingAmount(investingAmount);
        intrestInInvestService.saveIntrestInInvest(intrestInInvest);

        return "redirect:/user/applyForLoanList";
    }*/

//i as borrower start

    @GetMapping(value="/inversterList")
    public String showInvesterList(Principal principal,ModelMap model) {
        String usersEmail=principal.getName();
        List<ApplyForLoan> applyForLoanList=applyForLoanService.listApproveApplyForLoanByEmail(usersEmail);
        model.addAttribute("applyForLoanList", applyForLoanList);
        return "investerList";
    }


    @GetMapping(value="/getInvesters/{loanId}")
    public String showInvesterList(@PathVariable("loanId")String loanId,Principal principal,ModelMap model) {
        String usersEmail=principal.getName();
        List<ApplyForLoan> applyForLoanList=applyForLoanService.listApproveApplyForLoanByEmail(usersEmail);
        List<FixedInvester> fixedInvesterList=fixedInvesterService.listFixedInvesterByLoanId(loanId);
        model.addAttribute("applyForLoanList", applyForLoanList);
        model.addAttribute("fixedInvesterList",fixedInvesterList);
        return "investerList";
    }


    @GetMapping(value="/getMonthlyDetail/{investerId}/{loanId}")
    public String showInvesterList(@PathVariable("investerId")String investerId,@PathVariable("loanId")String loanId,ModelMap model) {
        List<SavePayment> savePaymentListNEW=savePaymentService.getSavePaymentByLoanInvesterID(investerId, loanId);
        model.addAttribute("savePaymentList", savePaymentListNEW);
        return "recordIBorrower";
    }
//i as borrower end



//i as lender start

    @GetMapping("/wantMoneyList")
    public String showIntrestInInvestList(Principal principal,ModelMap model) {
        String investerEmail=principal.getName();
        System.out.println("investerEmail is     "+investerEmail);
        List<FixedInvester> fixedInvesterList=fixedInvesterService.getFixedInvesterByInvesterEmail(investerEmail);
        model.addAttribute("fixedInvesterList",fixedInvesterList);
        return "wantMoneyList";
    }


    @GetMapping("/getBorrowerDetails/{loanId}")
    public String showApplyForLoanDetailsByLoanId(@PathVariable("loanId")String loanId,Principal principal,ModelMap model) {
        String usersEmail=principal.getName();
        System.out.println("current user mail from principal : "+usersEmail);
        UsersProfile usersProfile=usersProfileService.getUsersProfileByEmail(usersEmail);
        model.addAttribute("usersProfile",usersProfile);
        ApplyForLoan applyForLoan=applyForLoanService.getApplyForLoanByLoanId(loanId);
        model.addAttribute("applyForLoan",applyForLoan);
        return "applyForLoanDetails";
    }

    @GetMapping(value="/getMonthlyRecored/{investerId}/{loanId}")
    public String showBorrowersList(@PathVariable("investerId")String investerId,@PathVariable("loanId")String loanId,ModelMap model) {
        ApplyForLoan applyForLoan=applyForLoanService.getApplyForLoanByLoanId(loanId);
        UsersProfile usersProfile=usersProfileService.getUsersProfileByEmail(applyForLoan.getEmailId());
        List<SavePayment> savePaymentListNEW=savePaymentService.getSavePaymentByLoanInvesterID(investerId, loanId);
        model.addAttribute("applyForLoan", applyForLoan);
        model.addAttribute("usersProfile",usersProfile);
        model.addAttribute("savePaymentList", savePaymentListNEW);
        return "recordILender";
    }




    /*@RequestMapping(value="/saveApplyLoan",method=RequestMethod.POST)
    public String saveApplyLoan(Principal principal,HttpServletRequest request,@RequestParam CommonsMultipartFile[] fileUpload)
    {
        String userEmail,contactProof;
        Integer loaningAmount;
        userEmail=principal.getName();

        contactProof=request.getParameter("contactProof");
        loaningAmount=Integer.parseInt(request.getParameter("loaningAmount"));

        System.out.println("contact "+contactProof);
        System.out.println("loaning amount "+loaningAmount);

        System.out.println("value of SEED is 5");
        System.out.println("value of n is 1");

        Random random = new Random();
        random.setSeed(5);
        String loanId = null;
        for(int y=1;y<2;y++)
        {
            loanId=""+Math.abs(random.nextInt()*n);
            n++;
        }
        System.out.println("loan id is : "+loanId);

        ApplyForLoan applyForLoan=new ApplyForLoan();

        applyForLoan.setContactDetailsProof(contactProof);
        applyForLoan.setLoaningAmount(loaningAmount);
        applyForLoan.setAmountNotApproved(loaningAmount);
        applyForLoan.setAmountApproved(0);
        applyForLoan.setEmailId(userEmail);
        applyForLoan.setLoanId(loanId);
        System.out.println("value of SEED is 5");
        System.out.println("value of n is 1");



        Random random02 = new Random();
        random02.setSeed(4);
        String securityNo = null;
        for(int x=1;x<2;x++)
        {
            securityNo=""+Math.abs(random.nextInt()*n2);

            n2++;
        }
        System.out.println("security No is : "+securityNo);

        applyForLoan.setSecurityNo(securityNo);

        applyForLoan.setLoanStatus("pending");


        try {
            if (fileUpload != null && fileUpload.length > 0) {

                applyForLoan.setIdProof(fileUpload[0].getBytes());
                applyForLoan.setAgeProof(fileUpload[1].getBytes());
                applyForLoan.setAddressProof(fileUpload[2].getBytes());
                applyForLoan.setEmploymentProof(fileUpload[3].getBytes());
                applyForLoan.setIncomeProof(fileUpload[4].getBytes());
                applyForLoan.setBankStatement(fileUpload[5].getBytes());
                applyForLoan.setSignatureProof(fileUpload[6].getBytes());
                applyForLoan.setPhotograph(fileUpload[7].getBytes());
            }
            applyForLoanService.saveApplyForLoan(applyForLoan);



            String recipient=userEmail;
            String subject="DHANGURU";
            String content="Thankyou For Applying a Loan, Your Loan Id= "+loanId+", Amount = "+loaningAmount+", Current Status= Pending, still your rate of Intrest & Service Tax is not fixed, soon our Executive contact You";

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
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
        }
       return "applyForLoanInfo";
    }*/



    @GetMapping("/showApplyForLoanDetails/{id}")
    public String showApplyForLoanDetails(@PathVariable("id")Integer id,Principal principal,ModelMap model) {
        String usersEmail=principal.getName();
        System.out.println("current user mail from principal : "+usersEmail);
        UsersProfile usersProfile=usersProfileService.getUsersProfileByEmail(usersEmail);
        model.addAttribute("usersProfile",usersProfile);
        ApplyForLoan applyForLoan=applyForLoanService.getApplyForLoanById(id);
        model.addAttribute("applyForLoan",applyForLoan);
        return "applyForLoanDetails";
    }


    /*@RequestMapping("/downloadIDProof/{id}")
    public String downloadIDProof(@PathVariable("id") Integer id, HttpServletResponse response) {
        ApplyForLoan applyForLoan= applyForLoanService.getApplyForLoanById(id);
        try {
            if (applyForLoan.getIdProof()!= null) {
                response.setHeader("Content-Dispositon", "inline;filename=\"" + usersProfileService.getUsersProfileById(id).getFullName()+ "\"");
                OutputStream out = response.getOutputStream();
                response.setContentType("image/gif");
                byte[] bytes=applyForLoan.getIdProof();
                InputStream is = new ByteArrayInputStream(bytes);
                IOUtils.copy(is, out);
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }*/


    /*@RequestMapping("/downloadAgeProof/{id}")
    public String downloadAgeProof(@PathVariable("id") Integer id, HttpServletResponse response) {
        ApplyForLoan applyForLoan= applyForLoanService.getApplyForLoanById(id);
        try {
            if (applyForLoan.getAgeProof()!= null) {
                response.setHeader("Content-Dispositon", "inline;filename=\"" + usersProfileService.getUsersProfileById(id).getFullName()+ "\"");

                OutputStream out = response.getOutputStream();
                response.setContentType("image/gif");
                byte[] bytes=applyForLoan.getAgeProof();
                InputStream is = new ByteArrayInputStream(bytes);
                IOUtils.copy(is, out);
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }*/


    /*@RequestMapping("/downloadAddressProof/{id}")
    public String downloadAddressProof(@PathVariable("id") Integer id, HttpServletResponse response) {
        ApplyForLoan applyForLoan= applyForLoanService.getApplyForLoanById(id);
        try {
            if (applyForLoan.getAddressProof()!= null) {
                response.setHeader("Content-Dispositon", "inline;filename=\"" + usersProfileService.getUsersProfileById(id).getFullName()+ "\"");

                OutputStream out = response.getOutputStream();
                response.setContentType("image/gif");
                byte[] bytes=applyForLoan.getAddressProof();
                InputStream is = new ByteArrayInputStream(bytes);
                IOUtils.copy(is, out);
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }*/


    /*@RequestMapping("/downloadEmploymentProof/{id}")
    public String downloadEmploymentProof(@PathVariable("id") Integer id, HttpServletResponse response) {
        ApplyForLoan applyForLoan= applyForLoanService.getApplyForLoanById(id);
        try {
            if (applyForLoan.getEmploymentProof()!= null) {
                response.setHeader("Content-Dispositon", "inline;filename=\"" + usersProfileService.getUsersProfileById(id).getFullName()+ "\"");

                OutputStream out = response.getOutputStream();
                response.setContentType("image/gif");
                byte[] bytes=applyForLoan.getEmploymentProof();
                InputStream is = new ByteArrayInputStream(bytes);
                IOUtils.copy(is, out);
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }*/


    /*@RequestMapping("/downloadIncomeProof/{id}")
    public String downloadIncomeProof(@PathVariable("id") Integer id, HttpServletResponse response) {
        ApplyForLoan applyForLoan= applyForLoanService.getApplyForLoanById(id);
        try {
            if (applyForLoan.getIncomeProof()!= null) {
response.setHeader("Content-Dispositon", "inline;filename=\"" + usersProfileService.getUsersProfileById(id).getFullName()+ "\"");

                OutputStream out = response.getOutputStream();
                response.setContentType("image/gif");
                byte[] bytes=applyForLoan.getIncomeProof();
                InputStream is = new ByteArrayInputStream(bytes);
                IOUtils.copy(is, out);
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }*/


    /*@RequestMapping("/downloadBankStatement/{id}")
    public String downloadBankStatement(@PathVariable("id") Integer id, HttpServletResponse response) {
        ApplyForLoan applyForLoan= applyForLoanService.getApplyForLoanById(id);
        try {
            if (applyForLoan.getBankStatement()!= null) {
response.setHeader("Content-Dispositon", "inline;filename=\"" + usersProfileService.getUsersProfileById(id).getFullName()+ "\"");

                OutputStream out = response.getOutputStream();
                response.setContentType("image/gif");
                byte[] bytes=applyForLoan.getBankStatement();
                InputStream is = new ByteArrayInputStream(bytes);
                IOUtils.copy(is, out);
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }*/



    /*@RequestMapping("/downloadSignatureProof/{id}")
    public String downloadSignatureProof(@PathVariable("id") Integer id, HttpServletResponse response) {
        ApplyForLoan applyForLoan= applyForLoanService.getApplyForLoanById(id);
        try {
            if (applyForLoan.getSignatureProof()!= null) {
response.setHeader("Content-Dispositon", "inline;filename=\"" + usersProfileService.getUsersProfileById(id).getFullName()+ "\"");

                OutputStream out = response.getOutputStream();
                response.setContentType("image/gif");
                byte[] bytes=applyForLoan.getSignatureProof();
                InputStream is = new ByteArrayInputStream(bytes);
                IOUtils.copy(is, out);
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }*/





    /*@RequestMapping("/downloadPhotograph/{id}")
    public String downloadPhotograph(@PathVariable("id") Integer id, HttpServletResponse response) {
        ApplyForLoan applyForLoan= applyForLoanService.getApplyForLoanById(id);
        try {
            if (applyForLoan.getPhotograph()!= null) {
response.setHeader("Content-Dispositon", "inline;filename=\"" + usersProfileService.getUsersProfileById(id).getFullName()+ "\"");

                OutputStream out = response.getOutputStream();
                response.setContentType("image/gif");
                byte[] bytes=applyForLoan.getPhotograph();
                InputStream is = new ByteArrayInputStream(bytes);
                IOUtils.copy(is, out);
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }*/
}
