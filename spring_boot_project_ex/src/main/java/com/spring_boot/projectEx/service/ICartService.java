package com.spring_boot.projectEx.service;

import java.util.ArrayList;

import com.spring_boot.projectEx.model.CartVO;
import com.spring_boot.projectEx.model.MemberVO;
import com.spring_boot.projectEx.model.OrderInfoVO;

public interface ICartService {
	void insertCart(CartVO vo);  // 장바구니에 추가
	int checkPrdInCart(String prdNo, String memId);  // 동일 삼품 존재 여부 확인
	void updateQtyInCart(CartVO vo);  // 동일 상품이 존재하는 경우 수량만 변경
	ArrayList<CartVO> cartList(String memId);
	void deleteCart(String cartNo); // 장바구니에서 cartNo에 해당되는 것 삭제
	
	// 주문 처리 작업
	void updateCart(CartVO vo);
	MemberVO getMemberInfo(String memId); // 주문서에 출력할 회원정보 알아오기
		
	// 주문 내역 저장
	void insertOrder(OrderInfoVO ordInfoVo);
}
