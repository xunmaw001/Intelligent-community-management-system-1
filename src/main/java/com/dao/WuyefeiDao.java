package com.dao;

import com.entity.WuyefeiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WuyefeiVO;
import com.entity.view.WuyefeiView;


/**
 * 物业费
 * 
 * @author 
 * @email 
 * @date 2021-03-09 17:13:13
 */
public interface WuyefeiDao extends BaseMapper<WuyefeiEntity> {
	
	List<WuyefeiVO> selectListVO(@Param("ew") Wrapper<WuyefeiEntity> wrapper);
	
	WuyefeiVO selectVO(@Param("ew") Wrapper<WuyefeiEntity> wrapper);
	
	List<WuyefeiView> selectListView(@Param("ew") Wrapper<WuyefeiEntity> wrapper);

	List<WuyefeiView> selectListView(Pagination page,@Param("ew") Wrapper<WuyefeiEntity> wrapper);
	
	WuyefeiView selectView(@Param("ew") Wrapper<WuyefeiEntity> wrapper);
	
}
