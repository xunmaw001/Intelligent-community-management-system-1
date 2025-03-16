package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.WuyefeiEntity;
import com.entity.view.WuyefeiView;

import com.service.WuyefeiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 物业费
 * 后端接口
 * @author 
 * @email 
 * @date 2021-03-09 17:13:13
 */
@RestController
@RequestMapping("/wuyefei")
public class WuyefeiController {
    @Autowired
    private WuyefeiService wuyefeiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,WuyefeiEntity wuyefei, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("zhuhu")) {
			wuyefei.setZhuhuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<WuyefeiEntity> ew = new EntityWrapper<WuyefeiEntity>();
    	PageUtils page = wuyefeiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wuyefei), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,WuyefeiEntity wuyefei, HttpServletRequest request){
        EntityWrapper<WuyefeiEntity> ew = new EntityWrapper<WuyefeiEntity>();
    	PageUtils page = wuyefeiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wuyefei), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( WuyefeiEntity wuyefei){
       	EntityWrapper<WuyefeiEntity> ew = new EntityWrapper<WuyefeiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( wuyefei, "wuyefei")); 
        return R.ok().put("data", wuyefeiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(WuyefeiEntity wuyefei){
        EntityWrapper< WuyefeiEntity> ew = new EntityWrapper< WuyefeiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( wuyefei, "wuyefei")); 
		WuyefeiView wuyefeiView =  wuyefeiService.selectView(ew);
		return R.ok("查询物业费成功").put("data", wuyefeiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        WuyefeiEntity wuyefei = wuyefeiService.selectById(id);
        return R.ok().put("data", wuyefei);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        WuyefeiEntity wuyefei = wuyefeiService.selectById(id);
        return R.ok().put("data", wuyefei);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody WuyefeiEntity wuyefei, HttpServletRequest request){
    	wuyefei.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wuyefei);

        wuyefeiService.insert(wuyefei);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody WuyefeiEntity wuyefei, HttpServletRequest request){
    	wuyefei.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wuyefei);

        wuyefeiService.insert(wuyefei);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody WuyefeiEntity wuyefei, HttpServletRequest request){
        //ValidatorUtils.validateEntity(wuyefei);
        wuyefeiService.updateById(wuyefei);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        wuyefeiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<WuyefeiEntity> wrapper = new EntityWrapper<WuyefeiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("zhuhu")) {
			wrapper.eq("zhuhuzhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = wuyefeiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
