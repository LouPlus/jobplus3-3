"""
front.py
首页路由函数文件
"""
from flask import Blueprint, render_template

front = Blueprint('front', __name__)


@front.route('/')
def index():
    return render_template('index.html')


@front.route('/admin')
def admin():
    return render_template('backbase.html')


@front.route('/list')
def list():
    return render_template('list.html')
