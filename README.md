it is a one e commerce platform which is made in python technology , and django frarework.

>> for run project

1st : need the xampp , in xampp start mysql port or 3306 port 

2nd : open "setting.py" file 
      after that add your db name and all info in it , in db section 
      like this 
      ex:
      >> DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        
        'NAME': 'final',  # This is the name of the database
        
        'USER': 'your_db_user',
        'PASSWORD': 'your_db_password',
        'HOST': 'localhost',  # Or the host where your MySQL is running
        'PORT': '3306',  # Default MySQL port
    }
}
" <<

3rd : set the directory and type 
        "python manage.py runserver"
