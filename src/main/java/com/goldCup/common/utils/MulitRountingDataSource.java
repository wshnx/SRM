package com.goldCup.common.utils;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class MulitRountingDataSource extends AbstractRoutingDataSource {

	@Override
	protected Object determineCurrentLookupKey() {
		// TODO Auto-generated method stub
		return DataSourceManager.get();
	}

}
