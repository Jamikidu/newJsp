package model_p;

import java.util.Date;

public class GalleryDTO {

	String gtitle,gpname,gpw,gupfile,gcontent;
	Date greg_date;
	int gid, gcnt;
	public String getGtitle() {
		return gtitle;
	}
	public void setGtitle(String gtitle) {
		this.gtitle = gtitle;
	}
	public String getGpname() {
		return gpname;
	}
	public void setGpname(String gpname) {
		this.gpname = gpname;
	}
	public String getGpw() {
		return gpw;
	}
	public void setGpw(String gpw) {
		this.gpw = gpw;
	}
	public String getGupfile() {
		return gupfile;
	}
	public void setGupfile(String gupfile) {
		this.gupfile = gupfile;
	}
	public String getGcontent() {
		return gcontent;
	}
	public void setGcontent(String gcontent) {
		this.gcontent = gcontent;
	}
	public Date getGreg_date() {
		return greg_date;
	}
	public void setGreg_date(Date greg_date) {
		this.greg_date = greg_date;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getGcnt() {
		return gcnt;
	}
	public void setGcnt(int gcnt) {
		this.gcnt = gcnt;
	}
	@Override
	public String toString() {
		return "GalleryDTO [gid=" + gid + ", gtitle=" + gtitle + ", gupfile=" + gupfile + ", gcontent=" + gcontent
				+ ", gpname=" + gpname + ", gpw=" + gpw + ", greg_date=" + greg_date + ", gcnt=" + gcnt + "]";
	}
	
	
}
