package kr.co.ani;
import java.io.Serializable;

public class AniDTO implements Serializable {
 private String title;
 private int readCount;
 private int divide;

 @Override
public String toString() {
	return "AniDTO [title=" + title + ", readCount=" + readCount + ", divide=" + divide + "]";
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public int getReadCount() {
	return readCount;
}

public void setReadCount(int readCount) {
	this.readCount = readCount;
}

public int getDivide() {
	return divide;
}

public void setDivide(int divide) {
	this.divide = divide;
}

public AniDTO() {
	super();
	// TODO Auto-generated constructor stub
}

public AniDTO(String title, int readCount, int divide) {
	super();
	this.title = title;
	this.readCount = readCount;
	this.divide = divide;
}
 
}
