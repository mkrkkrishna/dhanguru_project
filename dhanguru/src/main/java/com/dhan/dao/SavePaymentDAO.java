package com.dhan.dao;

import com.dhan.model.SavePayment;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SavePaymentDAO extends JpaRepository<SavePayment, Integer> {
    /*public void saveSavePayment(SavePayment savePayment);
    public SavePayment getSavePaymentById(Integer id);
    public List<SavePayment> listSavePayment();
    public List<SavePayment> getSavePaymentByLoanInvesterID(String investerId, String loanId);*/
}
