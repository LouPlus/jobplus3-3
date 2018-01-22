"""
front.py
首页路由函数文件
"""
from flask import Blueprint, render_template, redirect, url_for, flash
from jobplus.forms import LoginForm, UserRegisterForm, CompanyRegisterForm
from jobplus.models import User
from flask_login import login_user, logout_user, login_required

front = Blueprint('front', __name__)


@front.route('/')
def index():
    return render_template('index.html')


@front.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email=form.email.data).first()
        login_user(user, form.remember_me.data)
        flash('登录成功！', 'success')
        return redirect(url_for('.index'))
    return render_template('login.html', form=form)


@front.route('/register', methods=['GET', 'POST'])
def register():
    form = UserRegisterForm()
    company_form = CompanyRegisterForm()
    if form.validate_on_submit():
        form.create_user()
        flash('注册成功，请登录！', 'success')
        return redirect(url_for('.login'))
    if company_form.validate_on_submit():
        company_form.create_user()
        flash('注册成功，请登录！', 'success')
        return redirect(url_for('.login'))
    return render_template(
        'register.html', form=form, company_form=company_form)


@front.route('/logout')
@login_required
def logout():
    logout_user()
    flash('您已退出登录', 'success')
    return redirect(url_for('.index'))
