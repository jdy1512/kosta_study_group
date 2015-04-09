package kr.or.kosta.study.moviereservation.common.vo;

import java.util.HashMap;
import java.util.Map;

public class AttributeAndView {

	private boolean redirect;
	private String url;
	private Map<String, Object> attributes;
	
	public AttributeAndView(boolean redirect, String url){
		this.redirect = redirect;
		this.url = url;
	}
	
	public AttributeAndView(boolean redirect, String url
					, Map<String, Object> attributes){
		this.redirect = redirect;
		this.url = url;
		this.attributes = attributes;
	}
	
	public AttributeAndView(boolean redirect, String url
					, String attrName, Object attribute){
		this.redirect = redirect;
		this.url = url;
		attributes = new HashMap<String, Object>();
		attributes.put(attrName, attributes);
	}
	
	public boolean isRedirect(){
		return redirect;
	}
	
	public void setRedirect(boolean redirect){
		this.redirect = redirect;
	}
	
	public String getUrl() {
		return url;
	}
	
	public void setUrl(String url){
		this.url = url;
	}
	
	public Map<String, Object> getAttributes(){
		return attributes;
	}
	
	public void setAttributes(Map<String, Object> attributes){
		this.attributes = attributes;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((attributes == null) ? 0 : attributes.hashCode());
		result = prime * result + (redirect ? 1231 : 1237);
		result = prime * result + ((url == null) ? 0 : url.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AttributeAndView other = (AttributeAndView) obj;
		if (attributes == null) {
			if (other.attributes != null)
				return false;
		} else if (!attributes.equals(other.attributes))
			return false;
		if (redirect != other.redirect)
			return false;
		if (url == null) {
			if (other.url != null)
				return false;
		} else if (!url.equals(other.url))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "AttributeAndView [redirect=" + redirect + ", url=" + url
				+ ", attributes=" + attributes + "]";
	}
	
	
}
