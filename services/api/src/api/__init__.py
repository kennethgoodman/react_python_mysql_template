from flask_restx import Api
from src.api.auth.resources import auth_namespace
from src.api.ping.resources import ping_namespace

api = Api(version="1.0", title="Users API", doc="/doc")

api.add_namespace(ping_namespace, path="/ping")
api.add_namespace(auth_namespace, path="/api/auth")
