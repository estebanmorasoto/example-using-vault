from RPA.Robocloud.Secrets import Secrets

_secret = Secrets().get_secret("credentials")
USER_NAME = _secret["username"]
PASSWORD = _secret["password"]