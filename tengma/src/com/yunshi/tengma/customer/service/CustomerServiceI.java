package com.yunshi.tengma.customer.service;

import java.util.List;

import com.jfinal.plugin.activerecord.Page;
import com.yunshi.tengma.customer.model.Customer;

public interface CustomerServiceI {

	Page<Customer> getDataGrid(int pageNumber, int pageSize, String phone, String real_name);

	List<Customer> getAll();


}
