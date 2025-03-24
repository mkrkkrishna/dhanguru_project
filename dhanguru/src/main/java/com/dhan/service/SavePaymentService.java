package com.dhan.service;

import com.dhan.model.SavePayment;

import java.util.List;

/**
 * Created by krishna on 2/11/16.
 */
public interface SavePaymentService {

    public void saveSavePayment(SavePayment savePayment);

    public SavePayment getSavePaymentById(Integer id);


    public List<SavePayment> listSavePayment();

    public List<SavePayment> getSavePaymentByLoanInvesterID(String investerId, String loanId);
}
