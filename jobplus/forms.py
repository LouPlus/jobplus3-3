"""
forms.py
表单类文件
"""

from flask_wtf import FlaskForm
from wtforms import (StringField, PasswordField, SubmitField, BooleanField,
                     ValidationError, TextAreaField, IntegerField)
from wtforms.validators import (Length, Email, EqualTo,
                                Required, URL, NumberRange)
from jobplus.models import db, User, Company, Job
from flask_login import current_user


class LoginForm(FlaskForm):
    email = StringField('邮箱', validators=[Required(), Email()])
    password = PasswordField('密码', validators=[Required(), Length(6, 24)])
    remember_me = BooleanField('记住我')
    submit = SubmitField('登录')

    def validate_email(self, field):
        if field.data and not User.query.filter_by(email=field.data).first():
            raise ValidationError('该邮箱未注册')

    def validate_password(self, field):
        user = User.query.filter_by(email=self.email.data).first()
        if user and not user.check_password(field.data):
            raise ValidationError('密码错误')


class UserRegisterForm(FlaskForm):
    username = StringField('用户名', validators=[Required(), Length(3, 24)])
    email = StringField('邮箱', validators=[Required(), Email()])
    password = PasswordField('密码', validators=[Required(), Length(6, 24)])
    repeat_password = PasswordField(
        '重复密码', validators=[Required(), EqualTo('password')])
    submit = SubmitField('提交')

    def validate_username(self, field):
        if User.query.filter_by(username=field.data).first():
            raise ValidationError('用户名已经存在')

    def validate_email(self, field):
        if User.query.filter_by(email=field.data).first():
            raise ValidationError('邮箱已经存在')

    def create_user(self):
        user = User(
            username=self.username.data,
            email=self.email.data,
            password=self.password.data)
        db.session.add(user)
        db.session.commit()
        return user


class UserProfileForm(FlaskForm):
    username = StringField('用户名', validators=[Length(3, 24)])
    email = StringField('邮箱', validators=[Email()])
    password = PasswordField('修改密码', validators=[Length(6, 24)])
    # new_password = PasswordField('修改密码', validators=[Length(6, 24)])
    repeat_password = PasswordField(
        '重复密码', validators=[EqualTo('password')])
    submit = SubmitField('提交')

    def update_user(self, user):
        self.populate_obj(user)
        db.session.add(user)
        db.session.commit()
        return user


class CompanyRegisterForm(FlaskForm):
    name = StringField('企业名', validators=[Required(), Length(3, 64)])
    username = StringField('用户名', validators=[Required(), Length(3, 24)])
    email = StringField('邮箱', validators=[Required(), Email()])
    password = PasswordField('密码', validators=[Required(), Length(6, 24)])
    repeat_password = PasswordField(
        '重复密码', validators=[Required(), EqualTo('password')])
    submit = SubmitField('提交')

    def validate_username(self, field):
        if User.query.filter_by(username=field.data).first():
            raise ValidationError('用户名已经存在')

    def validate_email(self, field):
        if User.query.filter_by(email=field.data).first():
            raise ValidationError('邮箱已经存在')

    def create_user(self):
        user = User(
            username=self.username.data,
            email=self.email.data,
            password=self.password.data,
            role=User.ROLE_COMPANY)
        company = Company(name=self.name, profile=user)
        db.session.add(user)
        db.session.add(company)
        db.session.commit()
        return user


class CompanyProfileForm(FlaskForm):
    name = StringField('企业名', validators=[Required(), Length(3, 64)])
    location = StringField('所在城市', validators=[Required(), Length(3, 32)])
    intro = StringField('一句话简介', validators=[Required(), Length(3, 256)])
    description = StringField('公司描述', validators=[Required(), Length(3, 512)])
    website = StringField('公司网站', validators=[Required(), Length(3, 512)])
    logo_url = StringField('公司Logo', validators=[Required(), Length(3, 512)])
    submit = SubmitField('更新')

    def validate_name(self, field):
        if User.query.filter_by(username=field.data).first():
            raise ValidationError('用户名已经存在')

    def update_prorfile(self, company):
        self.populate_obj(company)
        db.session.add(company)
        db.session.commit()
        return company
