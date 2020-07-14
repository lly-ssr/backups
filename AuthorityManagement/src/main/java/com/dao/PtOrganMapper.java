package com.dao;

import com.bean.PtOrgan;

public interface PtOrganMapper {
    int deleteByPrimaryKey(Integer organUuid);

    int insert(PtOrgan record);

    int insertSelective(PtOrgan record);

    PtOrgan selectByPrimaryKey(Integer organUuid);

    int updateByPrimaryKeySelective(PtOrgan record);

    int updateByPrimaryKey(PtOrgan record);
}