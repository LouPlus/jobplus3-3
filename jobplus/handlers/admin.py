"""
admin.py
后台路由函数文件
"""
from flask import Blueprint, render_template, redirect, url_for, flash
from jobplus.forms import LoginForm, UserRegisterForm, CompanyRegisterForm
from jobplus.models import User
from flask_login import login_user, logout_user, login_required, current_user

admin = Blueprint('admin', __name__, url_prefix='/admin')


@admin.route('/')
def index():
    return render_template('admin_base.html')
