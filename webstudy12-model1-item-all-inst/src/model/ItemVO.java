package model;

public class ItemVO {
	private String itemNo;
	private String name;
	private String maker;
	private int price;		
	public ItemVO() {
		super();		
	}	
	public ItemVO(String itemNo, String name) {
		super();
		this.itemNo = itemNo;
		this.name = name;
	}
	public ItemVO(String name, String maker, int price) {
		super();
		this.name = name;
		this.maker = maker;
		this.price = price;
	}
	public ItemVO(String itemNo, String name, String maker, int price) {
		super();
		this.itemNo = itemNo;
		this.name = name;
		this.maker = maker;
		this.price = price;
	}
	public String getItemNo() {
		return itemNo;
	}
	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "ItemVO [itemNo=" + itemNo + ", name=" + name + ", maker=" + maker + ", price=" + price + "]";
	}
	
	
}
