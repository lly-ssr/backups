package com.dao;

import com.bean.PtRUserDutyOrg;

public interface PtRUserDutyOrgMapper {
    int deleteByPrimaryKey(Integer userDutyid);

    int insert(PtRUserDutyOrg record);

    int insertSelective(PtRUserDutyOrg record);

    PtRUserDutyOrg selectByPrimaryKey(Integer userDutyid);

    int updateByPrimaryKeySelective(PtRUserDutyOrg record);

    int updateByPrimaryKey(PtRUserDutyOrg record);
}