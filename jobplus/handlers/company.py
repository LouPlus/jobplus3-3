"""
company.py
企业路由函数文件
"""
from flask import (Blueprint, render_template, redirect, url_for, flash,
                   request, current_app)
from jobplus.forms import (LoginForm, UserRegisterForm, CompanyRegisterForm,
                           CompanyProfileForm)
from jobplus.models import User, Company
from flask_login import login_user, logout_user, login_required, current_user
from jobplus.decorators import company_required

company = Blueprint('company', __name__, url_prefix='/company')


@company.route('/')
def index():
    page = request.args.get('page', default=1, type=int)
    pagination = Company.query.paginate(
        page=page,
        per_page=current_app.config['ADMIN_PER_PAGE'],
        error_out=False)
    return render_template('companylist.html', pagination=pagination)


@company.route('/admin/profile', methods=['GET', 'POST'])
@company_required
def profile():
    form = CompanyProfileForm(obj=current_user.company)
    if form.validate_on_submit():
        form.update_prorfile(current_user.company)
        flash('更新企业信息成功', 'success')
        return redirect(url_for('company.profile'))
    return render_template('profile.html', form=form)
