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


@front.route('/joblist')
def job_list():
    return render_template('joblist.html')


@front.route('/companylist')
def company_list():
    return render_template('companylist.html')
