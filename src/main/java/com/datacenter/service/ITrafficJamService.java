package com.datacenter.service;

import java.util.Date;

import com.common.base.service.IBaseService;
import com.common.utils.helper.Pager;
import com.datacenter.module.TrafficJam;
import com.datacenter.vo.TrafficJamVo;

/**
 * @Description 交通阻塞 service接口
 * @author xuezb
 * @date 2019年2月19日
 */
public interface ITrafficJamService extends IBaseService{
	
	/**
	 * 交通阻塞	分页
	 * @param page
	 * @param rows
	 * @param trafficJamVo
	 * @return
	 * @author xuezb
	 * @Date 2019年2月19日
	 */
	public Pager queryEntityList(Integer page, Integer rows, TrafficJamVo trafficJamVo);
	
	/**
	 * 交通阻塞	保存or更新
	 * @param trafficJamVo
	 * @return
	 * @author xuezb
	 * @Date 2019年2月19日
	 */
	public TrafficJam saveOrUpdate(TrafficJamVo trafficJamVo);

	/**
	 * 交通阻塞	删除
	 * @param ttId	主表(TotalTable)Id
	 * @return
	 * @author xuezb
	 * @Date 2019年2月19日
	 */
	public int deleteByTtId(String ttId);

	/**
	 * 交通阻塞	日期(dutyDate)修改
	 * @param ttId		主表(TotalTable)Id
	 * @param dutyDate	主表(TotalTable)dutyDate
	 * @return
	 * @author xuezb
	 * @Date 2019年2月19日
	 */
	public int updateDutyDate(String ttId, Date dutyDate);
		
}