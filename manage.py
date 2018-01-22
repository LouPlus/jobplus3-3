"""
manage.py
项目入口文件
"""
from jobplus.app import create_app
from jobplus.models import User

app = create_app('development')


@app.cli.command()
def create_admin():
    """初始化数据库
    """
    name, password = User.create_administrator()
    print('admin user %s with password %s' % (name, password))


if __name__ == '__main__':
    app.run()
