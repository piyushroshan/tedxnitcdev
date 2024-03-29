from os import path
import os

# Django settings for tedxnitcalicut project.

DEBUG = False
TEMPLATE_DEBUG = DEBUG
ACCOUNT_ACTIVATION_DAYS=7
EMAIL_USE_TLS =True
EMAIL_HOST ='smtp.gmail.com'
EMAIL_PORT = 587
EMAIL_HOST_USER='xxxxxxx'
EMAIL_HOST_PASSWORD ='xxxxx'
DEFAULT_FROM_EMAIL ='noreply@tedxnitcalicut.com'
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
DEFAULT_TO_EMAIL = 'tedxnitcalicut@gmail.com'
RECAPTCHA_PRIVATE_KEY = '6Let5NUSAAAAADXx-OIJHzZREb2SSrGaLwdG8ynO'
RECAPTCHA_PUBLIC_KEY = '6Let5NUSAAAAAOW6otujPq7PCR2WjcmXXgG8wc9b'



ADMINS = (
    # ('Your Name', 'your_email@example.com'),
)

MANAGERS = ADMINS

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql', # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': 'xxxxxxx',                      # Or path to database file if using sqlite3.
        'USER': 'xxxxxx',                      # Not used with sqlite3.
        'PASSWORD': 'xxxxx',                  # Not used with sqlite3.
        'HOST': '',                      # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '',                      # Set to empty string for default. Not used with sqlite3.
    }
}

# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# On Unix systems, a value of None will cause Django to use the same
# timezone as the operating system.
# If running in a Windows environment this must be set to the same as your
# system time zone.
TIME_ZONE = 'Asia/Kolkata'

# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = 'en-us'

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = True

# If you set this to False, Django will not format dates, numbers and
# calendars according to the current locale.
USE_L10N = True

# If you set this to False, Django will not use timezone-aware datetimes.
USE_TZ = True

# Absolute filesystem path to the directory that will hold user-uploaded files.
# Example: "/home/media/media.lawrence.com/media/"
MEDIA_ROOT = path.abspath('static_root/media_root/')

# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash.
# Examples: "http://media.lawrence.com/media/", "http://example.com/media/"
MEDIA_URL = 'http://tedxnitcalicut.com/media/'

# Absolute path to the directory static files should be collected to.
# Don't put anything in this directory yourself; store your static files
# in apps' "static/" subdirectories and in STATICFILES_DIRS.
# Example: "/home/media/media.lawrence.com/static/"
STATIC_ROOT = path.abspath('static_root/')

# URL prefix for static files.
# Example: "http://media.lawrence.com/static/"
STATIC_URL = '/static/'

# Additional locations of static files
STATICFILES_DIRS = (
    path.abspath("static"),
    path.abspath("media"),
    path.abspath("templates"),
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
)

# List of finder classes that know how to find static files in
# various locations.
STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.FileSystemFinder',
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
 #   'django.contrib.staticfiles.finders.DefaultStorageFinder',
)

TINYMCE_JS_URL = path.join(STATIC_URL, "js/tiny_mce/tiny_mce.js")
TINYMCE_JS_ROOT = path.join(STATIC_URL, "js/tiny_mce")

TINYMCE_DEFAULT_CONFIG = {
      'mode' : "textareas",
		'theme': 'advanced',
		'plugins' : "media,autoresize,preview",
      'theme_advanced_buttons1_add' : "media,preview",
      'plugin_preview_width' : "500",
      'plugin_preview_height' : "600",
		'theme_advanced_toolbar_location' : "top",
		'theme_advanced_toolbar_align' : "left",
		'theme_advanced_statusbar_location' : "bottom",
		'theme_advanced_resizing' : True,
		'convert_urls' : False
	}
TINYMCE_SPELLCHECKER = True
TINYMCE_COMPRESSOR = False


# Make this unique, and don't share it with anybody.
SECRET_KEY = '_urk((9f^#13w!r#$qg8m-_wk!+^z0)ygr9s(7cr6b27heg4sx'

# List of callables that know how to import templates from various sources.
TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',
#     'django.template.loaders.eggs.Loader',
)

MIDDLEWARE_CLASSES = (
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    # Uncomment the next line for simple clickjacking protection:
    # 'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'tedxnitcalicut.urls'

# Python dotted path to the WSGI application used by Django's runserver.
WSGI_APPLICATION = 'tedxnitcalicut.wsgi.application'

TEMPLATE_DIRS = (

    path.abspath("templates/"),
    # Put strings here, like "/home/html/django_templates" or "C:/www/django/templates".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
)

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.humanize',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.sites',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'aboutus',
    'filebrowser',
    'grappelli',
    'contactus',
    'blogs',
    'homepage',
    'nominations',
    'recaptchawidget',
    'sorl.thumbnail',
    
    # Uncomment the next line to enable the admin:
     'django.contrib.admin',
    # Uncomment the next line to enable admin documentation:
     'django.contrib.admindocs',
    'tinymce',
	 'recaptcha',
    'oauth2',
)

FILEBROWSER_DEBUG=True

# A sample logging configuration. The only tangible logging
# performed by this configuration is to send an email to
# the site admins on every HTTP 500 error when DEBUG=False.
# See http://docs.djangoproject.com/en/dev/topics/logging for
# more details on how to customize your logging configuration.
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        }
    },
    'handlers': {
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false'],
            'class': 'django.utils.log.AdminEmailHandler'
        }
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins'],
            'level': 'ERROR',
            'propagate': True,
        },
    }
}
