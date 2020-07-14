package com.dao;

import com.bean.PtUser;

public interface PtUserMapper {
    int deleteByPrimaryKey(Integer userUuid);

    int insert(PtUser record);

    int insertSelective(PtUser record);

    PtUser selectByPrimaryKey(Integer userUuid);

    int updateByPrimaryKeySelective(PtUser record);

    int updateByPrimaryKey(PtUser record);
}