# jobplus3-3
> LouPlus Team 3 https://www.shiyanlou.com/louplus/python

* [孙文轲](https://github.com/sunwenke)
* [Hammer_T](https://github.com/flapjackegg)
* [超宝宝](https://github.com/ChasonZhang)

# 使用说明

* 首先用 virtualenv 创建环境
* `pip install -r requirements.txt`  安装依赖环境
* 启动 mysql, 创建数据库，并导入数据
* `sudo service mysql start`
* `sudo mysql -u<user> -p<password> -e 'create database jobplus default charset utf8;'`
* `sudo mysql -u<user> -p<password> jobplus < datas/jobplus.sql`
* 创建管理员用户 `FLASK_APP=manage.py FLASK_DEBUG=1 flask create_admin`
* 启动 flask `FLASK_APP=manage.py FLASK_DEBUG=1 flask run`
