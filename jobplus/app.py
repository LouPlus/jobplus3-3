"""
app.py
项目初始化文件
"""
from flask import Flask
from jobplus.config import configs
from jobplus.models import db
from flask_migrate import Migrate


def create_app(config):
    app = Flask(__name__)
    app.config.from_object(configs.get(config))
    db.init_app(app)
    register_blueprints(app)
    Migrate(app, db)
    return app


def register_blueprints(app):
    from .handlers import front
    app.register_blueprint(front)
