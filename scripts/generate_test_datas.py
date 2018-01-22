import os
import json
from faker import Faker
from jobplus.models import db, User, Company, Job

fake = Faker()


def iter_fake_data():
    with open(
            os.path.join(
                os.path.dirname(__file__), '..', 'datas', 'jobs.json')) as f:
        job_datas = json.load(f)
    usernum = 0
    for job in job_datas:
        user = User(
            username='company' + str(usernum),
            email='company' + str(usernum) + '@qq.com',
            password='123456',
            role=User.ROLE_COMPANY)
        usernum = usernum + 1

        company = Company(
            name=job['company_name'],
            location=job['location'],
            logo_url=job['img_url'],
            website=fake.url(),
            description=fake.text(),
            profile=user)

        job = Job(
            name=job['name'],
            salary=job['salary'],
            experience=job['experience'],
            location=job['location'],
            degree=job['degree'],
            description=fake.text(),
            company=company)

        # print(user, company, job)
        try:
            db.session.add(user)
            db.session.add(company)
            db.session.add(job)
        except Exception as e:
            print(e)
            db.session.rollback()
    try:
        db.session.commit()
    except Exception as e:
        print(e)
        db.session.rollback()
