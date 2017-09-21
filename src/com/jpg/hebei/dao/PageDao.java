package com.jpg.hebei.dao;

import java.util.List;

import com.jpg.hebei.model.Information;
import com.jpg.hebei.model.PageBean;

public interface PageDao {

	/**
	 * ��ҳ��ѯ
	 * @param hql  ��ѯ����
	 * @param offset  ��ʼ��¼
	 * @param length  һ�β�ѯ������¼
	 * @return ��ѯ�ļ�¼����
	 */
	@SuppressWarnings("unchecked")
	public List<Information> queryForPage(final String hql,final int offset,final int length);
	/*public PageBean queryForPage(int pageSize,int currentPage);*/
	
	/**
	 * ��ѯ���еļ�¼��
	 * @param hql ��ѯ����
	 * @return �ܼ�¼��
	 */
	/*public int getAllRowCount(String hql); */
	public PageBean queryForPage(int pageSize,int currentPage,String hql);
	public List<Information> findAllInformation(String hql);
}
