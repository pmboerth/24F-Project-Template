from flask import Flask

from backend.db_connection import db
from backend.opportunities.opportunities_routes import opportunities
from backend.posts.posts_routes import posts
from backend.students.students_routes import students
from backend.applications.applications_routes import applications
from backend.departments.departments_routes import departments
from backend.professors.professors_routes import professors
from backend.skills.skills_routes import skills
from backend.comments.comments_routes import comments
import os
from dotenv import load_dotenv

def create_app():
    app = Flask(__name__)

    # Load environment variables
    load_dotenv()

    # Secret key that will be used for securely signing the session 
    # cookie and can be used for any other security related needs by 
    # extensions or your application
    app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')

    # Connect the db object to MySQL
    app.config['MYSQL_DATABASE_USER'] = os.getenv('DB_USER').strip()
    app.config['MYSQL_DATABASE_PASSWORD'] = os.getenv('MYSQL_ROOT_PASSWORD').strip()
    app.config['MYSQL_DATABASE_HOST'] = os.getenv('DB_HOST').strip()
    app.config['MYSQL_DATABASE_PORT'] = int(os.getenv('DB_PORT').strip())
    app.config['MYSQL_DATABASE_DB'] = os.getenv('DB_NAME').strip()  # Change this to your DB name

    # Initialize the database object with the settings above. 
    app.logger.info('current_app(): starting the database connection')
    db.init_app(app)


    # Register the routes from each Blueprint with the app object
    # and give a url prefix to each
    app.logger.info('current_app(): registering blueprints with Flask app object.')   
    app.register_blueprint(opportunities,   url_prefix='/o')
    app.register_blueprint(posts,   url_prefix='/p')
    app.register_blueprint(students, url_prefix='/s')
    app.register_blueprint(applications, url_prefix='/a')
    app.register_blueprint(departments, url_prefix='/d')
    app.register_blueprint(professors, url_prefix='/pr')
    app.register_blueprint(skills, url_prefix='/sk')
    app.register_blueprint(comments, url_prefix='/c')



    # Return the app object
    return app

