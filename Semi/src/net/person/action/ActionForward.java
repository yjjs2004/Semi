package net.person.action;

//ActionForward Ŭ���� Action �������̽����� ����� �����ϰ� ��� ����
//������ �̵��� �� ���Ǵ� Ŭ���� �Դϴ�.
//�� Ŭ������ Redirect ���� ���� �������� ������ ��ġ�� ������ �ֽ��ϴ�.
//�� ������ FronController���� ActionForward Ŭ���� Ÿ������ ��ȯ����
//�������� �� ���� Ȯ���Ͽ� �ش��ϴ� ��û �������� �̵��մϴ�.
public class ActionForward {

	private boolean redirect=false;
	private String path=null;
	
	public String getPath() {
		return path;
	}

	public void setPath(String string) {
		path = string;
	}

	public boolean isRedirect() {
		//������Ƽ Ÿ���� boolean�� ��� get ��� is�� �տ� ���� �� �ֽ��ϴ�.
		return redirect;
	}
	
	public void setRedirect(boolean b) {
		redirect=b;
	}
}
