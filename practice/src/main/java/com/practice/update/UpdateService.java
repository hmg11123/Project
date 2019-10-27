package com.practice.update;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.practice.signin.MemberVO;

@Service("updateService")
public class UpdateService {

	@Resource(name = "updateDao")
	private UpdateDao cDao;
	
	public void update(MemberVO vo)
	{
		cDao.update(vo);
	}
	
}
