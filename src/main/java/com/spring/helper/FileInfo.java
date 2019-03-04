package com.spring.helper;

/**
 * �뾽濡쒕뱶 �맂 �뙆�씪�쓽 �젙蹂대�� ���옣�븯湲� �쐞�븳 JavaBeans
 * - �씠 �겢�옒�뒪�쓽 媛앹껜媛� �뾽濡쒕뱶 �맂 �뙆�씪�쓽 �닔 留뚰겮 �깮�꽦�릺�뼱 List �삎�깭濡� 蹂닿��맂�떎.
 */
public class FileInfo {
	private String fieldName; 	// <input type="file">�쓽 name�냽�꽦
	private String orginName; 	// �썝蹂� �뙆�씪 �씠由�
	private String fileDir; 	// �뙆�씪�씠 ���옣�릺�뼱 �엳�뒗 �꽌踰꾩긽�쓽 寃쎈줈
	private String fileName; 	// �꽌踰꾩긽�쓽 �뙆�씪 �씠由�
	private String contentType; // �뙆�씪�쓽 �삎�떇
	private long fileSize; 		// �뙆�씪�쓽 �슜�웾

	// getter + setter + toString() 異붽�
	public String getFieldName() {
		return fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	public String getOrginName() {
		return orginName;
	}

	public void setOrginName(String orginName) {
		this.orginName = orginName;
	}

	public String getFileDir() {
		return fileDir;
	}

	public void setFileDir(String fileDir) {
		this.fileDir = fileDir;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	@Override
	public String toString() {
		return "FileInfo [fieldName=" + fieldName + ", orginName=" + orginName + ", fileDir=" + fileDir + ", fileName="
				+ fileName + ", contentType=" + contentType + ", fileSize=" + fileSize + "]";
	}

}