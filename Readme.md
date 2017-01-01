获取亚马逊电子书价格小工具
===

找出需要跟踪电子书的url，写入book.list文件，每行一本电子书，第一列为自定义书名，建议是书的英文简称，中间用关键字magic分割，第二列填上书的url，定时执行download.sh即可。

# 找出url方法

> 点进去电子书，然后通过wget命令(wget -np -nd --accept=* --no-check-certificate )，会显示其跳转路径，最终的路径按格式粘贴到即可。

# 路径设置

> 放在自己的home目录下的amazon文件夹下,或者修改代码中的路径。
