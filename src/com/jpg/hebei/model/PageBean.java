package com.jpg.hebei.model;

import java.util.List;
public class PageBean {

	private List<Information> list; 
	private int allRow;//�ܼ�¼��
	private int totalPage;//��ҳ��
	private int currentPage;//��ǰҳ
	private int pageSize;//ÿҳ�ļ�¼��
	
	private boolean isFristPage;//�Ƿ�Ϊ��һҳ
	private boolean isLastPage;//�Ƿ�Ϊ���һҳ
	private boolean hasPreviousPage;//�Ƿ���ǰһҳ
	private boolean hasNextPage;//�Ƿ��к�һҳ
	
	
	/*
	 * ��ʼ����ҳ��Ϣ
	 */
	public void init(){
		this.isFristPage=isFristPage();
		this.isLastPage= isLastPage();
		this.hasPreviousPage=HasPreviousPage();
		this.hasNextPage=HasNextPage();
	}
	
	
	
	public boolean isFristPage() {
		return (currentPage==1);
	}
	public boolean isLastPage() {
		return currentPage== totalPage;
	}
	public boolean HasPreviousPage() {
		return currentPage !=1;
	}
	public boolean HasNextPage() {
		return currentPage != totalPage;
	}
	
	/**
	 * ������ҳ��  ��̬����
	 * @param pageSize  ÿҳ�ļ�¼��
	 * @param allRow  �ܼ�¼��
	 * @return ��ҳ��
	 */
	
	public static int countTotalPage(final int pageSize,final int allRow){
		int totalPage = allRow % pageSize ==0 ? allRow/pageSize :allRow /pageSize +1;
		return totalPage;
	}
	
	/**
	 * ���㵱ǰҳ��ʼ�ļ�¼
	 * @param pageSize ÿҳ��¼��
	 * @param currentPage ��ǰ�ڼ�ҳ
	 * @return ��ǰҳ��ʼ��¼��
	 */
	public static int countOffset(final int pageSize,int currentPage){
		final int offset = pageSize * (currentPage - 1);
		return offset;
	}
	/**
	 * ���㵱ǰҳ����Ϊ0���������URL��û�С�?page = ������1����
	 * @param page ����Ĳ���������Ϊ�գ���0  �򷵻�1��
	 * @return
	 */
	public static int countCurrentPage(int page){
		final int curPage =(page==0 ? 1 : page);
		return curPage;
	}

	public List<Information> getList() {
		return list;
	}

	public void setList(List<Information> list) {
		this.list = list;
	}

	public int getAllRow() {
		return allRow;
	}

	public void setAllRow(int allRow) {
		this.allRow = allRow;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public boolean isHasPreviousPage() {
		return hasPreviousPage;
	}

	public void setHasPreviousPage(boolean hasPreviousPage) {
		this.hasPreviousPage = hasPreviousPage;
	}

	public boolean isHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

	public void setFristPage(boolean isFristPage) {
		this.isFristPage = isFristPage;
	}

	public void setLastPage(boolean isLastPage) {
		this.isLastPage = isLastPage;
	}
}
