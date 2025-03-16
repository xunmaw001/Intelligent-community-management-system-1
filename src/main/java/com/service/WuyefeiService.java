package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WuyefeiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WuyefeiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WuyefeiView;


/**
 * 物业费
 *
 * @author 
 * @email 
 * @date 2021-03-09 17:13:13
 */
public interface WuyefeiService extends IService<WuyefeiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WuyefeiVO> selectListVO(Wrapper<WuyefeiEntity> wrapper);
   	
   	WuyefeiVO selectVO(@Param("ew") Wrapper<WuyefeiEntity> wrapper);
   	
   	List<WuyefeiView> selectListView(Wrapper<WuyefeiEntity> wrapper);
   	
   	WuyefeiView selectView(@Param("ew") Wrapper<WuyefeiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WuyefeiEntity> wrapper);
   	
}

