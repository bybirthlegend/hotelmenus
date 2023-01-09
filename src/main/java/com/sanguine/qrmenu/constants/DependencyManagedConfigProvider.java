package com.sanguine.qrmenu.constants;

import cashfree.config.CashfreeAuthConfig;
import cashfree.config.CashfreeHttpClientConfig;
import cashfree.config.ConfigProvider;
import cashfree.config.Domain;

public class DependencyManagedConfigProvider implements ConfigProvider {

	/*
	 * For production
	 * 
	 */
	String key = "2e153db54ad7bbb4bed506b8905f36e371804241";
	String secret = "54056e9f0220fdf4bce24c32265045";

	/* 
	* 
	*/
	/*
	 * For test/sandbox
	 */
	/*
	 * String key = "63e593ac8937c22ff0db5a1271644345dbc74b60"; String secret =
	 * "16610c93381cacfeb4acd8cf901661";
	 */
	@Override
	public CashfreeHttpClientConfig getClientConfig() {
		/*
		 * For production
		 * 
		 * return CashfreeHttpClientConfig.builder().domain(Enum.valueOf(Domain.class,
		 * "PROD")).apiVersion("2022-01-01") .maximumHttpClientRetries(1).build();
		 */
		/*
		 * For test/sandbox
		 */
		return CashfreeHttpClientConfig.builder().domain(Enum.valueOf(Domain.class, "PROD")).apiVersion("2022-01-01")
				.maximumHttpClientRetries(1).build();
	}

	@Override
	public CashfreeAuthConfig getAuthConfig() {
		return CashfreeAuthConfig.builder().apiKey(this.key).clientId(this.secret).build();
	}
}