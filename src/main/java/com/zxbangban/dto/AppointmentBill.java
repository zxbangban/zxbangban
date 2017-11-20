package com.zxbangban.dto;

import com.zxbangban.entity.Customer;
import org.springframework.stereotype.Repository;

@Repository
public class AppointmentBill {

    private Customer customer;

    private WorkerDetail workerDetail;

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public WorkerDetail getWorkerDetail() {
        return workerDetail;
    }

    public void setWorkerDetail(WorkerDetail workerDetail) {
        this.workerDetail = workerDetail;
    }

    public AppointmentBill() {
    }

    public AppointmentBill(Customer customer, WorkerDetail workerDetail) {
        this.customer = customer;
        this.workerDetail = workerDetail;
    }

    @Override
    public String toString() {
        return "AppointmentBill{" +
                "customer=" + customer +
                ", worker=" + workerDetail +
                '}';
    }
}
