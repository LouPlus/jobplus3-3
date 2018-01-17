"""
manage.py
项目入口文件
"""
from jobplus.app import create_app

app = create_app('development')


if __name__ == '__main__':
    app.run()
