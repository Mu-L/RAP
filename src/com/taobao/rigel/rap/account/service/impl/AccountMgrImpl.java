package com.taobao.rigel.rap.account.service.impl;

import java.util.List;

import com.taobao.rigel.rap.account.bo.User;
import com.taobao.rigel.rap.account.dao.AccountDao;
import com.taobao.rigel.rap.account.service.AccountMgr;
import com.taobao.rigel.rap.common.StringUtils;
import com.taobao.rigel.rap.organization.bo.Corporation;
import com.taobao.rigel.rap.organization.service.OrganizationMgr;

public class AccountMgrImpl implements AccountMgr {

	private AccountDao accountDao;
	private OrganizationMgr organizationMgr;
	
	public OrganizationMgr getOrganizationMgr() {
		return organizationMgr;
	}

	public void setOrganizationMgr(OrganizationMgr organizationMgr) {
		this.organizationMgr = organizationMgr;
	}

	public AccountDao getAccountDao() {
		return accountDao;
	}
	
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	
	@Override
	public boolean validate(String account, String password) {
		if (password == null) return false;
//		password = StringUtils.getDoubleMD5(password);
		return accountDao.validate(account, password);
	}

	@Override
	public boolean addUser(User user) {
		String ps = user.getPassword();
		if (ps == null) return false;
		
		// DOUBLE MD5 encryption
		ps = StringUtils.getDoubleMD5(ps);
		return accountDao.addUser(user);
	}

	@Override
	public boolean changePassword(String account, String oldPassword,
			String newPassword) {
		if (oldPassword == null || newPassword == null) return false;
		oldPassword = StringUtils.getDoubleMD5(oldPassword);
		newPassword = StringUtils.getDoubleMD5(newPassword);
		return accountDao.changePassword(account, oldPassword, newPassword);
	}

	@Override
	public User getUser(long userId) {
		return accountDao.getUser(userId);
	}

	@Override
	public User getUser(String account) {
		return accountDao.getUser(account);
	}

	@Override
	public long getUserId(String account) {
		return accountDao.getUserId(account);
	}

	@Override
	public void changeProfile(long userId, String profileProperty,
			String profileValue) {
		accountDao.changeProfile(userId, profileProperty, profileValue);
		
	}

	@Override
	public boolean updateProfile(long userId, String name, String email, String password,
			String newPassword) {
		if (password != null) {
			password = StringUtils.getDoubleMD5(password);
			newPassword = StringUtils.getDoubleMD5(newPassword);
		}
		return accountDao.updateProfile(userId, name, email, password, newPassword);
	}

	@Override
	public List<User> getUserList() {
		return accountDao.getUserList();
	}

	@Override
	public void _updatePassword(String account, String password) {
		accountDao._changePassword(account, password);
	}

	@Override
	public List<Corporation> getCorporationList() {
		return organizationMgr.getCorporationList();
	}

	@Override
	public User getUserByName(String name) {
		return accountDao.getUserByName(name);
	}

}
