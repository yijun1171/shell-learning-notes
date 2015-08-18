Linux命令备忘录
===

### Network
#### nc
4层网络工具
-w 超时时间
-v 输出过程
nc -v -w5 \$ip \$port   扫描指定ip的端口

#### dig
域名解析工具
+short 只输出简单A记录和CNAME
dig +short \$domain
dig +short @\$server \$domain 指定dns服务器

#### curl
7层网络工具
-o 输出命令结果
-s 命令结果不在控制台输出
-m 命令超时时间
-w %{format} 输出指定信息
curl -o /dev/null -s --connect-timeout 5 -m 5 -w %{http_code} $domain 该命令只输出状态码

### Performance
#### top
观察计算机的实时性能指标
CUP利用率 load mem 等

#### lsof
列出打开的文件句柄

### Processor
#### ps
检查进程状态
#### kill

### 其他
#### grep
