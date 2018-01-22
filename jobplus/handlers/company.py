"""
company.py
企业路由函数文件
"""
from flask import Blueprint, render_template, redirect, url_for, flash
from jobplus.forms import LoginForm, UserRegisterForm, CompanyRegisterForm
from jobplus.models import User
from flask_login import login_user, logout_user, login_required

company = Blueprint('company', __name__, url_prefix='/company')


@company.route('/')
def index():
    return render_template('companylist.html')
