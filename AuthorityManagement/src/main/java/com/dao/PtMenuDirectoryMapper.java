package com.dao;

import com.bean.PtMenuDirectory;

public interface PtMenuDirectoryMapper {
    int deleteByPrimaryKey(Integer menuId);

    int insert(PtMenuDirectory record);

    int insertSelective(PtMenuDirectory record);

    PtMenuDirectory selectByPrimaryKey(Integer menuId);

    int updateByPrimaryKeySelective(PtMenuDirectory record);

    int updateByPrimaryKey(PtMenuDirectory record);
}