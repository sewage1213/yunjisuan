/**
 * 
 */
package com.chen.dao;

import java.util.List;

import com.chen.bean.Announces;

/**
 * @author cookie
 * @email 
 */
public interface AnnounceDao {
	public List<Announces> getIndexAnno(int index);

	/**
	 * @return
	 */
	public List<Announces> getAll();

	/**
	 * @param id
	 */
	public Announces find(int id);

	/**
	 * @param announce
	 */
	public void update(Announces announce);

	/**
	 * @param announce
	 */
	public void add(Announces announce);
}
