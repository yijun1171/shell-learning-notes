Linux�����¼
===

### Network
#### nc
4�����繤��
-w ��ʱʱ��
-v �������
nc -v -w5 \$ip \$port   ɨ��ָ��ip�Ķ˿�

#### dig
������������
+short ֻ�����A��¼��CNAME
dig +short \$domain
dig +short @\$server \$domain ָ��dns������

#### curl
7�����繤��
-o ���������
-s ���������ڿ���̨���
-m ���ʱʱ��
-w %{format} ���ָ����Ϣ
curl -o /dev/null -s --connect-timeout 5 -m 5 -w %{http_code} $domain ������ֻ���״̬��

### Performance
#### top
�۲�������ʵʱ����ָ��
CUP������ load mem ��

#### lsof
�г��򿪵��ļ����

### Processor
#### ps
������״̬
#### kill

### ����
#### grep
