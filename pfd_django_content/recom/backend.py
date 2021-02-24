from django.conf import settings
from .models import UserProfile
from django.contrib.auth.models import Permission

class UserAuthBackend(object):
    def authenticate(self, username=None, password=None):
        try:
            useri=UserProfile.objects.get(username=username)
            if useri.password==password:
                return useri
            else:
                return None
        except UserProfile.DoesNotExist:
            return None

    def get_user(self, user_id):
        try:
            user = UserProfile.objects.get(userid=user_id)
            if user.is_active:
                return user
            return None
        except UserProfile.DoesNotExist:
            return None

'''( useri.password==password ):'''
