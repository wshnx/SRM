package com.goldCup.common.utils;

public class DataSourceManager {
    private static final ThreadLocal<DataSources> dataSourceTypes=new ThreadLocal<>();
    
    public static DataSources get(){
        return dataSourceTypes.get();
    }
    
    public static void set(DataSources dataSourceType){
        dataSourceTypes.set(dataSourceType);
    }
    
    public static void reset(){
        dataSourceTypes.set(DataSources.SRM);
    }
}
