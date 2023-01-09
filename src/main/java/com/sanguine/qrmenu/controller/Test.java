package com.sanguine.qrmenu.controller;

import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;

public class Test {

	public static void main(String[] args) {
		try {
			URL retUrl = new URL("http://appetite.quinta.co.in:8080/SanguineMenus/success/{order_id}/{order_token}");
			try {
				System.out.println(retUrl.toURI().toString());
			} catch (URISyntaxException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
