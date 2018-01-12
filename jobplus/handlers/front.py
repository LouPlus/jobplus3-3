"""
front.py
首页路由函数文件
"""
from flask import Blueprint, render_template

front = Blueprint('front', __name__)


@front.route('/')
def index():
    return render_template('index.html')
