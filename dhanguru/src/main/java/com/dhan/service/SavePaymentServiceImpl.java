package com.dhan.service;

import com.dhan.dao.SavePaymentDAO;
import com.dhan.model.SavePayment;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class SavePaymentServiceImpl implements SavePaymentService {

    @Autowired
    private SavePaymentDAO savePaymentDAO;


    @Transactional
    @Override
    public void saveSavePayment(SavePayment savePayment) {
        savePaymentDAO.save(savePayment);
    }

    @Transactional
    @Override
    public SavePayment getSavePaymentById(Integer id) {
        return savePaymentDAO.findById(id).orElse(new SavePayment());
    }

    @Transactional
    @Override
    public List<SavePayment> listSavePayment() {
        return savePaymentDAO.findAll();
    }

    @Transactional
    @Override
    public List<SavePayment> getSavePaymentByLoanInvesterID(String investerId, String loanId) {
//        return savePaymentDAO.getSavePaymentByLoanInvesterID(investerId, loanId);
        return new ArrayList<>();
    }
}
