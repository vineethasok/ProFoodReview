from django.db import models
from django.contrib.auth.models import AbstractBaseUser , BaseUserManager
from django.contrib.auth.models import User
import datetime




class uprefi(models.Model):
    userid = models.CharField(max_length = 10)
    userp = models.CharField(max_length = 40)
    
class iprefi(models.Model):
    userid = models.CharField(max_length = 10)
    itemp = models.CharField(max_length = 40)
    scorep = models.CharField(max_length = 3)
    
class UserProfileManager(BaseUserManager):
    def create_user(self,username,userid,scoreop,password):
        user=self.model(last_login=datetime.datetime.now(),date_joined=datetime.datetime.now(),username=username,userid=userid,scoreop=scoreop,password=password)
        user.save()
        return user
    def create_superuser(self,username,userid,scoreop,password):
        user=self.create_user(username,userid,scoreop,password=password)
        user.save()
        return user

class UserProfile(models.Model):
    username = models.CharField(max_length=30,unique=True)
    password = models.CharField(max_length=16)
    userid = models.CharField(max_length = 14)
    scoreop = models.CharField(max_length = 3)
    last_login=models.DateField(default=datetime.datetime.now())
    date_joined=models.DateField(default=datetime.datetime.now())
    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['userid','scoreop','password']
    objects = UserProfileManager()

    def __unicode__(self):
        return self.username
    def get_user(self):
        return self.username
    def get_pwd(self):
        return self.password
    def getscoreop(self):
        return self.scoreop
