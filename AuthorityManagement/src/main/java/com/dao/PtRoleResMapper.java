package com.dao;

import com.bean.PtRoleRes;

public interface PtRoleResMapper {
    int deleteByPrimaryKey(Integer roleResid);

    int insert(PtRoleRes record);

    int insertSelective(PtRoleRes record);

    PtRoleRes selectByPrimaryKey(Integer roleResid);

    int updateByPrimaryKeySelective(PtRoleRes record);

    int updateByPrimaryKey(PtRoleRes record);
}