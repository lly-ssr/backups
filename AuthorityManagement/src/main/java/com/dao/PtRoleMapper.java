package com.dao;

import com.bean.PtRole;

public interface PtRoleMapper {
    int deleteByPrimaryKey(Integer roleUuid);

    int insert(PtRole record);

    int insertSelective(PtRole record);

    PtRole selectByPrimaryKey(Integer roleUuid);

    int updateByPrimaryKeySelective(PtRole record);

    int updateByPrimaryKey(PtRole record);
}