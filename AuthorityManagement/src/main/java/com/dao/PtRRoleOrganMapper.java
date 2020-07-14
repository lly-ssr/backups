package com.dao;

import com.bean.PtRRoleOrgan;

public interface PtRRoleOrganMapper {
    int deleteByPrimaryKey(Integer dutyid);

    int insert(PtRRoleOrgan record);

    int insertSelective(PtRRoleOrgan record);

    PtRRoleOrgan selectByPrimaryKey(Integer dutyid);

    int updateByPrimaryKeySelective(PtRRoleOrgan record);

    int updateByPrimaryKey(PtRRoleOrgan record);
}