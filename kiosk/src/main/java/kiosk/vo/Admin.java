package kiosk.vo;

public class Admin {
	protected int id;
	protected String category;
	protected String menu;
	protected int count;
	protected long price;
	protected String date;
	public Admin(int _id, String _category, String _menu, int _count, long _price, String _date) {
		this.id = _id;
		this.category = _category;
		this.menu = _menu;
		this.count = _count;
		this.price = _price;
		this.date = _date;
	}
	public int getId() {
		return this.id;
	}
	public String getCategory() {
		return this.category;
	}
	public String getMenu() {
		return this.menu;
	}
	public int getCount() {
		return this.count;	
	}
	public long getPrice() {
		return this.price;
	}
	public String getDate() {
		return this.date;
	}
}

