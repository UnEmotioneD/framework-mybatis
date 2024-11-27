package kr.or.iei.board.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Board {
	private String boardNo;
	private String boardTitle;
	private String boardContent;
	private String boardWrite;
	private String readCount;
	private String regDate;
}
