package mvc.model;

import java.util.ArrayList;

public class BoardDAO {

	private static BoardDAO instance;
	
	private BoardDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static BoardDAO getInstance() {
		if (instance == null)
			instance = new BoardDAO();
		return instance;
	}
	
	//board 테이블의 레코드 개수
	public int getListCount() {
		//생략
		return 0;
	}
	
	//board 테이블의 레코드 가져오기
	public ArrayList<BoardDTO> getBoardList(int page, int limit, String items, String text) {
		return null;
	}
	
	//member 테이블에서 인증된 id의 사용자명 가져오기
	public String getLoginNameById(String id) { 
		return id;
	}
	
	//board 테이블에 새로운 글 삽입하기
	public void insertBoard(BoardDTO board) { 
		
	}
	
	//선택된 글 조회 수 증가시키기
	public void updateHit(int num) {
		
	}
	
	//선택된 글 상세 내용 가져오기
	public BoardDTO getBoardByNum(int num, int page) {
		return null;
	}
	
	//선택된 글 내용 수정하기
	public void updateBoard(BoardDTO board) {
		
	}
	
	//선택된 글 삭제하기
	public void deleteBoard(int num) {
		
	}
}
