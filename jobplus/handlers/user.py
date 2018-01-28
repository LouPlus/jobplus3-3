"""
user.py
用户路由函数文件
"""
from flask import Blueprint, render_template, redirect, url_for, flash
from jobplus.forms import (LoginForm, UserRegisterForm, CompanyRegisterForm,
                           UserProfileForm)
from jobplus.models import User
from flask_login import login_user, logout_user, login_required, current_user

user = Blueprint('user', __name__, url_prefix='/user')


@user.route('/profile', methods=['GET', 'POST'])
@login_required
def user_profile():
    form = UserProfileForm(obj=current_user)
    if form.validate_on_submit():
        form.update_user(current_user)
        flash('更新用户信息成功', 'success')
        return redirect(url_for('user.user_profile'))
    return render_template('profile.html', form=form)
