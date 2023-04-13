package org.zerock.domain;

import lombok.Data;

@Data
public class CartVO {

	private Long cno;
	private String id;
	private Long price;		//ShopVO�� lprice
	private String pname;	//ShopVO�� title
	private Long count;
	private String pimage;	//shopVO�� image
	private String iname;	//ShopVO�� ingredient
	private Long productid;
}
