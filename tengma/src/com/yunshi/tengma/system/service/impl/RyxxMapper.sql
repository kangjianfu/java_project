/* 人员信息列表_select */
getListRyxx_select =\
select a.id,a.username,a.nickname,a.xb_dm,a.xzzwmc,a.xzjbmc,a.zgxl,\
a.zgxw,a.zgzc,a.zuoji,a.shouji,a.duanhao,a.dept_id,a.bmzyfzr,\
decode(a.bmzyfzr,'Y','是','否') bmzyfzrmc,a.ryzt_dm,c.mc ryztmc,\
a.qtbz_dm,d.mc qtbzmc,a.tysjq,a.tysjz,a.order_id,b.name dept_name
/* 人员信息列表_sqlExceptSelect */
getListRyxx_sqlExceptSelect=\
from sys_user a,sys_dept b,v_sys_xx_dict c,v_sys_xx_dict d \
where a.dept_id=b.id \
and c.dlbm='RYZT' and a.ryzt_dm=c.bm \
and d.dlbm='QTBZ' and a.qtbz_dm=d.bm 