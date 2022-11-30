package kiosk.vo;

public class Member {
	// DB DATA 변수
	protected int id;
	protected String number;
	protected int point;
	protected int count;
	protected String date;
	public Member() {}
	public Member(int _id, String _number, int _point, int _count, String _date) {
		this.id = _id;
		this.number = _number;
		this.point = _point;
		this.count = _count;
		this.date = _date;
	}
	public int getId() {
		return this.id;
	}
	public String getNumber() {
		return this.number;
	}
	public int getPoint() {
		return this.point;
	}
	public int getCount() {
		return this.count;
	}
	public String getDate() {
		return this.date;
	}

	// Back-end 활용 변수
	protected int countMax = 0;
	protected int targetId = 1;
	protected String dayMax = "";
	public int getCountMax() {
		return this.countMax;
	}
	public int getTargetId() {
		return this.targetId;
	}
	public String getDayMax() {
		return this.dayMax;
	}
	public void setCountMax(int _countMax) {
		this.countMax = _countMax;
	}
	public void setTargetId(int _targetId) {
		this.targetId = _targetId;
	}
	public void setDayMax(String _dayMax) {
		this.dayMax = _dayMax;
	}
}

