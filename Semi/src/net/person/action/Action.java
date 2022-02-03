package net.person.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Ư�� ����Ͻ� ��û���� �����ϰ� ��� ���� ActionForward Ÿ������ ��ȯ�ϴ�
//�޼��尡 ���ǵǾ� �ֽ��ϴ�.
//Action : �������̽� ��
//ActionForward: ��ȯ��
public interface Action {
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException;
}
