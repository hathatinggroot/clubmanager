package com.clubmanager.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class AttachVO {
	private String fileName;
	private String filePath;
	private int isImg;
	private int boardNo;
}
