"""
job.py
职位路由函数文件
"""
from flask import (Blueprint, render_template, redirect, url_for, flash,
                   request, current_app)
from jobplus.forms import LoginForm, UserRegisterForm, CompanyRegisterForm
from jobplus.models import User, Job
from flask_login import login_user, logout_user, login_required

job = Blueprint('job', __name__, url_prefix='/job')


@job.route('/')
def index():
    page = request.args.get('page', default=1, type=int)
    pagination = Job.query.paginate(
        page=page,
        per_page=current_app.config['ADMIN_PER_PAGE'],
        error_out=False)
    return render_template('joblist.html', pagination=pagination)
