"""
app.py
项目初始化文件
"""
from flask import Flask
from jobplus.config import configs
from jobplus.models import db, User
from flask_migrate import Migrate
from flask_login import LoginManager


def create_app(config):
    app = Flask(__name__)
    app.config.from_object(configs.get(config))
    register_blueprints(app)
    register_extensions(app)
    # create_admin(app)
    return app


def register_blueprints(app):
    from .handlers import front, user, admin, company, job
    app.register_blueprint(front)
    app.register_blueprint(user)
    app.register_blueprint(admin)
    app.register_blueprint(company)
    app.register_blueprint(job)


def register_extensions(app):
    db.init_app(app)
    Migrate(app, db)
    login_manager = LoginManager()
    login_manager.init_app(app)

    @login_manager.user_loader
    def user_loader(id):
        return User.query.get(id)

    login_manager.login_view = 'front.login'


# 创建默认管理员用户
def create_admin(app):
    with app.app_context():
        name, password = User.create_administrator()
        app.logger.debug('create administrator user: %s, password: %s', name,
                         password)
