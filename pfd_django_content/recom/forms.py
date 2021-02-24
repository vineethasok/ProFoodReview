from django import forms
from django.contrib.auth.forms import UserCreationForm
import uuid
from .models import UserProfile
# Create your models here.

def my_random_string(string_length=17):
    """Returns a random string of length string_length."""
    random = str(uuid.uuid4())
    random = random.upper() 
    random = random.replace("-","")
    return random[0:string_length]

class MyRegistrationForm(UserCreationForm):
    CHOICES = [('0','<3'),
               ('1','<5'),
               ('2','=5')]
    scoreop=forms.ChoiceField(choices=CHOICES,widget=forms.RadioSelect())
    userid=forms.CharField(max_length=15,widget=forms.HiddenInput(),initial= my_random_string(14) )
    class Meta:
        model = UserProfile
        fields= ('username','password1','password2','scoreop','userid')
    def save(self,commit=True):
        user=super(UserCreationForm, self).save(commit=False)
        user.scoreop=self.cleaned_data['scoreop']
        user.userid=self.cleaned_data['userid']
        user.password=self.cleaned_data['password1']
        if commit:
            user.save()

        return user

class fupref(forms.Form):
    userid = forms.CharField(max_length = 10)
    userp = forms.CharField(max_length = 40)
    
class fipref(forms.Form):
    userid = forms.CharField(max_length = 10)
    itemp = forms.CharField(max_length = 40)



