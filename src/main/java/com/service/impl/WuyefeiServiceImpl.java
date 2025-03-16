package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.WuyefeiDao;
import com.entity.WuyefeiEntity;
import com.service.WuyefeiService;
import com.entity.vo.WuyefeiVO;
import com.entity.view.WuyefeiView;

@Service("wuyefeiService")
public class WuyefeiServiceImpl extends ServiceImpl<WuyefeiDao, WuyefeiEntity> implements WuyefeiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WuyefeiEntity> page = this.selectPage(
                new Query<WuyefeiEntity>(params).getPage(),
                new EntityWrapper<WuyefeiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WuyefeiEntity> wrapper) {
		  Page<WuyefeiView> page =new Query<WuyefeiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WuyefeiVO> selectListVO(Wrapper<WuyefeiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WuyefeiVO selectVO(Wrapper<WuyefeiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WuyefeiView> selectListView(Wrapper<WuyefeiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WuyefeiView selectView(Wrapper<WuyefeiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
