from .base import *

DEBUG = False

ADMINS = [
    ("Josh", "josh@asleepingturtle.com"),
]

ALLOWED_HOSTS = ["*"]

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "NAME": BASE_DIR / "db.sqlite3",
    }
}
