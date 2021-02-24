from django.conf import settings
from django.http import HttpResponseRedirect

class RemoveNextMiddleware(object):
    def process_request(self, request):
        a= 'next'
        if request.path == settings.LOGIN_URL and (a in request.GET):
            return HttpResponseRedirect(settings.LOGIN_URL)
