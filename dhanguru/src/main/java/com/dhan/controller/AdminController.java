package com.dhan.controller;


//import com.dhan.utility.EmailUtility;
import com.dhan.model.*;
import com.dhan.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;


@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private FeedbackService feedbackService;
    @Autowired
    private ContactUsService contactUsService;
    @Autowired
    private ApplyForLoanService applyForLoanService;
    @Autowired
    private IntrestInInvestService intrestInInvestService;
    @Autowired
    private UsersProfileService usersProfileService;
    @Autowired
    private FixedInvesterService fixedInvesterService;
    @Autowired
    private ServiceCityService serviceCityService;
    @Autowired
    private SavePaymentService savePaymentService;

    static byte n=3;

    /*private String host="smtp.gmail.com";
    mail.careerguru4you.in

    private String portNo="587";
    private String user="www.ghochu.prasad@gmail.com";
    private String pass="rohitkumarmishra";*/

    @GetMapping("/enterLoanId")
    public String enterLoanId() {
        return "getSecurityKey";
    }

    @GetMapping("/addPayment")
    public String ShowAddPaymentPage() {
        return "showAddPayment";
    }

    @RequestMapping({"/admin","/applyForLoanList"})
    public String showApplyForLoanList(ModelMap model)
    {
        List<ApplyForLoan> applyForLoanList = applyForLoanService.listPendingApplyForLoan();
        model.addAttribute("applyForLoanList", applyForLoanList);
        return "adminApplyForLoanList";
    }

    @GetMapping("/intrestInInvest/{loanId}")
    public String showIntrestInInvestList(ModelMap model,@PathVariable("loanId")String loanId)
    {
        ApplyForLoan applyForLoan=applyForLoanService.getApplyForLoanByLoanId(loanId);

        model.addAttribute("applyForLoan",applyForLoan);

        List<IntrestInInvest> intrestInInvestList=intrestInInvestService.listIntrestInInvestByLoanId(loanId);
        model.addAttribute("intrestInInvestList", intrestInInvestList);
        return "adminIntrestInInvestList";
    }


    @RequestMapping("/fixInvester/{id}")
    public String showFixInvesterPage(@PathVariable("id")Integer id,ModelMap model)
    {
        System.out.println("id is recieved : "+id);
        IntrestInInvest intrestInInvest=intrestInInvestService.getIntrestInInvestById(id);
        String emailId=intrestInInvest.getInvestorEmail();
        UsersProfile usersProfile=usersProfileService.getUsersProfileByEmail(emailId);
        model.addAttribute("usersProfile", usersProfile);
        model.addAttribute("intrestInInvest",intrestInInvest);
        return "fixInvester";
    }



    @RequestMapping("/generateInvestorId/{id}")
    public String showGenerateInvestorId(@PathVariable("id")Integer id,ModelMap model)
    {
        System.out.println("id is recieved : "+id);
        IntrestInInvest intrestInInvest=intrestInInvestService.getIntrestInInvestById(id);
        String emailId=intrestInInvest.getInvestorEmail();
        UsersProfile usersProfile=usersProfileService.getUsersProfileByEmail(emailId);


        Random random = new Random();
        random.setSeed(3);
        String investorId = null;
        for(int y=1;y<2;y++)
        {
            investorId=""+Math.abs(random.nextInt()*n);
            n++;
        }
        System.out.println("invester id is : "+investorId);
        model.addAttribute("investerId", investorId);
        model.addAttribute("usersProfile", usersProfile);
        model.addAttribute("intrestInInvest",intrestInInvest);
        return "fixInvester";
    }



    /*@RequestMapping(value="/saveFixInvester",method=RequestMethod.POST)
    public String saveFixedInvester(HttpServletRequest request,ModelMap model)
    {
        String loanId,investerName,investerEmail,investerContact,investerId;

        Integer intrestRate,investingAmount;


        loanId=request.getParameter("loanId");
        investerName=request.getParameter("investerName");

        investerEmail=request.getParameter("investerEmail");
        investerContact=request.getParameter("investerContact");

        investingAmount=Integer.parseInt(request.getParameter("investingAmount"));
        investerId=request.getParameter("investerId");
        intrestRate=Integer.parseInt(request.getParameter("intrestRate"));


        FixedInvester fixedInvester=new FixedInvester();

        fixedInvester.setLoanId(loanId);
        fixedInvester.setInvesterName(investerName);
        fixedInvester.setInvesterEmail(investerEmail);
        fixedInvester.setInvesterContact(investerContact);
        fixedInvester.setInvestingAmount(investingAmount);
        fixedInvester.setIntrestRate(intrestRate);
        fixedInvester.setInvesterId(investerId);


        DateFormat dateFormat1 = new SimpleDateFormat("dd/M/yyyy");
        Date date1 = new Date();
        String currentDate=dateFormat1.format(date1);

        fixedInvester.setFixDate(currentDate);


        ApplyForLoan applyForLoan=applyForLoanService.getApplyForLoanByLoanId(loanId);
        System.out.println(applyForLoan.getLoanStatus().equals("pending"));
        if(applyForLoan.getLoanStatus().equals("pending"))
        {
            Integer ba=applyForLoan.getAmountApproved();
            Integer bna=applyForLoan.getAmountNotApproved();
            Integer la=applyForLoan.getLoaningAmount();

            if(investingAmount>la)
            {
                model.addAttribute("fixInvester", "a");
            }else if(investingAmount>bna)
            {
                model.addAttribute("fixInvester", "b");
            }
            else if(ba.equals(la))
            {
                applyForLoan.setLoanStatus("Approve");
                applyForLoan.setApproveDate(currentDate);
                applyForLoanService.updateApplyForLoan(applyForLoan);
                model.addAttribute("fixInvester", "c");
            }

            else if(investingAmount<=bna)
            {
                ba=ba+investingAmount;
                bna=bna-investingAmount;
                applyForLoan.setAmountApproved(ba);
                applyForLoan.setAmountNotApproved(bna);
                fixedInvesterService.saveFixedInvester(fixedInvester);
                model.addAttribute("fixInvester", "d");
            }
        }
        return "index";
    }*/


    @GetMapping("/feedbackList")
    public String showFeedbackList(ModelMap model) {
        List<Feedback> feedbackList=feedbackService.listFeedback();
        model.addAttribute("feedbackList",feedbackList);
        return "feedbackList";
    }


    @GetMapping("/contactUsList")
    public String showContactUsList(ModelMap model) {
        List<ContactUs> contactUsList=contactUsService.listContactUs();
        model.addAttribute("contactUsList",contactUsList);
        return "contactUsList";
    }

    @GetMapping("/serviceCity")
    public String showAddServiceCityForm(ModelMap model) {
        List<ServiceCity> serviceCityList=serviceCityService.listServiceCity();
        model.addAttribute("serviceCityList", serviceCityList);
        return "addServiceCity";
    }

    /*@RequestMapping(value="/saveServiceCity",method=RequestMethod.POST)
    public String saveServiceCity(HttpServletRequest request,ModelMap model)
    {
        String city,pincode;
        city=request.getParameter("serviceCity");
        pincode=request.getParameter("pincode");

        System.out.println("service city is  "+city);
        System.out.println("service city pincode is   "+pincode);

        ServiceCity serviceCity=new ServiceCity();
        serviceCity.setServiceCity(city);
        serviceCity.setPincode(pincode);
        serviceCityService.saveServiceCity(serviceCity);

        model.addAttribute("saved","saved.............");

        List<ServiceCity> serviceCityList=serviceCityService.listServiceCity();
        model.addAttribute("serviceCityList", serviceCityList);

        return "redirect:/serviceCity";
    }*/





    /*@RequestMapping("/getSecurityKey")
    public String getSecurityKey(HttpServletRequest request,ModelMap model){
        String loanId=request.getParameter("loanId");
        String securityKey=applyForLoanService.getSecurityKeyByLoanId(loanId);
        model.addAttribute("securityKey",securityKey);
        return "getSecurityKey";
    }*/



    /*@RequestMapping("/getData_AddPayment")
    public String getData_AddPayment(HttpServletRequest request,ModelMap model) {
        String loanId=request.getParameter("loanId");
        ApplyForLoan applyForLoan=applyForLoanService.getApplyForLoanByLoanId(loanId);
        model.addAttribute("applyForLoan", applyForLoan);
        List<FixedInvester> fixedInvesterList=fixedInvesterService.listFixedInvesterByLoanId(loanId);
        model.addAttribute("fixedInvesterList",fixedInvesterList);
        return "showAddPayment";
    }*/


    @RequestMapping("/makePayment/{investerId}/{loanId}")
    public String ShowAddPaymentPage(@PathVariable("investerId")String investerId,@PathVariable("loanId")String loanId,ModelMap model) {
        FixedInvester fixedInvester=fixedInvesterService.getFixedInvesterByInvesterId_LoanId(investerId,loanId);
        Integer intrestRate=fixedInvester.getIntrestRate();
        Integer investingAmount=fixedInvester.getInvestingAmount();
        Integer aa = intrestRate*investingAmount;
        String investerEmail=fixedInvester.getInvesterEmail();
        System.out.println("invester email id when make payment :"+investerEmail);
        ApplyForLoan applyForLoan=applyForLoanService.getApplyForLoanByLoanId(loanId);
        String applyForLoanEMAIL=applyForLoan.getEmailId();
        System.out.println("apply For Loan EMAIL id when make payment :"+applyForLoanEMAIL);
        List<SavePayment> savePaymentList=savePaymentService.getSavePaymentByLoanInvesterID(investerId, loanId);
        model.addAttribute("savePaymentList", savePaymentList);
        model.addAttribute("loanId", loanId);
        model.addAttribute("investerId",investerId);
        model.addAttribute("intrestRate",intrestRate);
        model.addAttribute("investingAmount",investingAmount);
        return "makePayment";
    }


    /*@RequestMapping(value="/savePayment",method = RequestMethod.POST)
    public String saveMakePayment(HttpServletRequest request,ModelMap model)
    {
        String day=(request.getParameter("day"));
        String yearMonth=(request.getParameter("yearMonth"));
        Integer capitalPaid=Integer.parseInt(request.getParameter("capitalPaid"));

        String loanId=request.getParameter("loanId");
        String investerId=request.getParameter("investerId");


        Integer intrestRate=Integer.parseInt(request.getParameter("intrestRate"));
        Float investingAmount=Float.parseFloat(request.getParameter("investingAmount"));



        List<SavePayment> savePaymentList=savePaymentService.getSavePaymentByLoanInvesterID(investerId, loanId);
        System.out.println("dsdsdsds");
        Float bAmount = null;
        System.out.println("bAmount before "+bAmount);
        if(savePaymentList!=null)
        {
            System.out.println("savePaymentList is NOT   null");
            for (SavePayment savePayment1 : savePaymentList)
            {
                bAmount = savePayment1.getBalanceAmount();
                System.out.println("b amount from database is " + bAmount);
            }
        }
        else
        {
            System.out.println("savePaymentList is nullllllllllllllllll");
            bAmount=investingAmount;
        }

        System.out.println("balance amount after :    "+bAmount);
        Float intrestRateMAIN=(float)intrestRate / 100;
        Float intrestPaid=  intrestRateMAIN * bAmount;
        System.out.println("intrestPaid would be  :   "+intrestPaid);
        Float balanceAmount=bAmount-capitalPaid;
        System.out.println("balanceAmount would be  :   "+balanceAmount);

        SavePayment savePayment=new SavePayment();

        savePayment.setDay(day);
        savePayment.setYearMonth(yearMonth);

        savePayment.setLoanId(loanId);
        savePayment.setInvesterId(investerId);

        savePayment.setIntrestPaid(intrestPaid);
        savePayment.setCapitalPaid(capitalPaid);

        savePayment.setBalanceAmount(balanceAmount);

        savePaymentService.saveSavePayment(savePayment);





        System.out.println("hiii payment is saved..............................");


//email sending start

        FixedInvester fixedInvester=fixedInvesterService.getFixedInvesterByInvesterId_LoanId(investerId,loanId);
        String investerEmail=fixedInvester.getInvesterEmail();
        System.out.println("invester email id when make payment :"+investerEmail);

        ApplyForLoan applyForLoan=applyForLoanService.getApplyForLoanByLoanId(loanId);
        String applyForLoanEMAIL=applyForLoan.getEmailId();
        System.out.println("apply For Loan EMAIL id when make payment :"+applyForLoanEMAIL);
//email sending end


//invester email strat

        String recipient01=investerEmail;
        String subject01="DHANGURU";
        String content01="You recieved "+capitalPaid+" as capital paid from Loan ID "+loanId+" .";

        try
        {
            System.out.println("calling send mail method********* ");
            EmailUtility.sendEmail(host, portNo, user, pass, recipient01, subject01,content01);
            System.out.println("calling send mail method is DONEEEEEEE****************");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
//invester email end



//borrower email start

        String recipient02=applyForLoanEMAIL;
        String subject02="DHANGURU";
        String content02="You Paid "+capitalPaid+" as capital paid to Invester ID "+investerId+" .";

        try
        {
            System.out.println("calling send mail method********* ");
            EmailUtility.sendEmail(host, portNo, user, pass, recipient02, subject02,content02);
            System.out.println("calling send mail method is DONEEEEEEE****************");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
//borrower email end


//email sending end

        List<SavePayment> savePaymentListNEW=savePaymentService.getSavePaymentByLoanInvesterID(investerId, loanId);
        model.addAttribute("savePaymentList", savePaymentListNEW);
        return "makePayment";
    }*/
}
