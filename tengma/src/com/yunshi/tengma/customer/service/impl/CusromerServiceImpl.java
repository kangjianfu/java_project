package com.yunshi.tengma.customer.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.jfinal.aop.Clear;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;
import com.yunshi.tengma.customer.model.Customer;
import com.yunshi.tengma.customer.service.CustomerServiceI;
@Clear
public class CusromerServiceImpl implements CustomerServiceI {

	@Override
	public Page<Customer> getDataGrid(int pageNumber, int pageSize, String phone, String real_name) {
		String select_sql="select a.id,a.sex,a.status,a.source,a.sfzhm,a.remark,a.real_name,a.phone, a.create_time,a.nick_name,b.mc as sex_1,c.mc as status_1,d.mc as source_1 ";
		List<Object> paramObj = new ArrayList<Object>();
        StringBuffer formwhere = new StringBuffer();
        formwhere.append(" from t_customer a,v_sys_xx_dict b,v_sys_xx_dict c,v_sys_xx_dict d");
        formwhere.append(" where a.sex=b.bm and b.dlbm='XB' and a.status=c.bm and c.dlbm='YHZT' and d.bm=a.source and d.dlbm='YHLY' ") ;
        if(StrKit.notBlank(real_name)) {
        	real_name = "%"+real_name+"%";
			formwhere.append(" and (a.real_name like ? or a.real_name like ?)");
		    paramObj.add(real_name);
		    paramObj.add(real_name);
		}
        if(StrKit.notBlank(phone)) {
        	phone = "%"+phone+"%";
        	formwhere.append(" and (a.phone like ? or a.phone like ?)");
        	paramObj.add(phone);
        	paramObj.add(phone);
        }
        formwhere.append(" order by a.create_time desc");
        Page<Customer> paginate = Customer.dao.paginate(pageNumber, pageSize, select_sql, formwhere.toString(), paramObj.toArray());
		return paginate;
	}
	
	@Override
	public List<Customer> getAll() {
		
		return Customer.dao.find("select * from t_customer");
	}



}
