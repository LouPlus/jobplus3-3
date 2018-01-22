"""
user.py
用户路由函数文件
"""
from flask import Blueprint, render_template, redirect, url_for, flash
from jobplus.forms import LoginForm, UserRegisterForm, CompanyRegisterForm
from jobplus.models import User
from flask_login import login_user, logout_user, login_required, current_user

user = Blueprint('user', __name__, url_prefix='/user')


@user.route('/profile', methods=['GET', 'POST'])
def user_profile():
    form = UserRegisterForm(obj=current_user)
    return render_template('profile.html', form=form)
