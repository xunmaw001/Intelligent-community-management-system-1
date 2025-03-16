package com.entity.view;

import com.entity.WuyefeiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 物业费
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-09 17:13:13
 */
@TableName("wuyefei")
public class WuyefeiView  extends WuyefeiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WuyefeiView(){
	}
 
 	public WuyefeiView(WuyefeiEntity wuyefeiEntity){
 	try {
			BeanUtils.copyProperties(this, wuyefeiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
