package cc.mxtt.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseCjDict<M extends BaseCjDict<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Integer id) {
		set("id", id);
	}

	public java.lang.Integer getId() {
		return get("id");
	}

	public void setBm(java.lang.String bm) {
		set("bm", bm);
	}

	public java.lang.String getBm() {
		return get("bm");
	}

	public void setMc(java.lang.String mc) {
		set("mc", mc);
	}

	public java.lang.String getMc() {
		return get("mc");
	}

	public void setParentId(java.lang.Integer parentId) {
		set("parent_id", parentId);
	}

	public java.lang.Integer getParentId() {
		return get("parent_id");
	}

	public void setOrderId(java.lang.Integer orderId) {
		set("order_id", orderId);
	}

	public java.lang.Integer getOrderId() {
		return get("order_id");
	}

	public void setQybz(java.lang.String qybz) {
		set("qybz", qybz);
	}

	public java.lang.String getQybz() {
		return get("qybz");
	}

	public void setXgbz(java.lang.String xgbz) {
		set("xgbz", xgbz);
	}

	public java.lang.String getXgbz() {
		return get("xgbz");
	}

}
