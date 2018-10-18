package com.erp.pojo;
/**
* @Description: TODO(分页)
* @author JS
* 2018年10月4日 上午11:30:12
 */
public class Paging {
	private Integer offset; //当前页
	private Integer limit;  //每页几条数据
	private Integer coumt;  //总记录数,共多少条数据
	private Integer totalPages;  //总页数
	private Integer pagestart;  //显示页数的开始
	private Integer pageEnd;  //显示页数的结束
	
	public Paging() {
	}
	
	public Paging(Integer offset, Integer limit) {
		this.offset = offset;
		this.limit = limit;
	}

	public Paging(Integer offset, Integer limit, Integer coumt) {
		this.offset = offset;
		this.limit = limit;
		this.coumt = coumt;
		totalPages = (coumt%limit)==0?(coumt/limit):(coumt/limit)+1;  //得到总页数
		/*下面为显示5页的情况*/
		//如果当前页+2 大于了总页数，那么开始页就等于总页数减4 如果总页数减4小于1那么 开始页就等于第一页
		pagestart = offset+2 > totalPages ? (totalPages-4<=0?1:totalPages-4):(offset>=3?(offset-2):1);
		//如果当前页小于等于3 并且总页数大于等于5 那么末尾页就等于5  否则末尾页就等于当前页加2  如果当前页加2大于总页数 那么末尾页就等于总页数
		pageEnd = (offset<=3 && totalPages>=5) ? 5 : ((offset+2)<=totalPages?(offset + 2):totalPages);
	}
	
	public Integer getOffset() {
		return offset;
	}
	public void setOffset(Integer offset) {
		this.offset = offset;
	}
	public Integer getLimit() {
		return limit;
	}
	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	public Integer getCoumt() {
		return coumt;
	}

	public void setCoumt(Integer coumt) {
		this.coumt = coumt;
	}

	public Integer getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}

	public Integer getPagestart() {
		return pagestart;
	}

	public void setPagestart(Integer pagestart) {
		this.pagestart = pagestart;
	}

	public Integer getPageEnd() {
		return pageEnd;
	}

	public void setPageEnd(Integer pageEnd) {
		this.pageEnd = pageEnd;
	}

	@Override
	public String toString() {
		return "Paging [offset=" + offset + ", limit=" + limit + ", coumt="
				+ coumt + ", totalPages=" + totalPages + ", pagestart="
				+ pagestart + ", pageEnd=" + pageEnd + "]";
	}
	
}
