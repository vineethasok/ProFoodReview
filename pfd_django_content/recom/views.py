from django.shortcuts import render
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.contrib import auth
from django.contrib.auth.decorators import login_required
from django.core.context_processors import csrf
from django.http import HttpResponse,HttpResponseRedirect
from .forms import MyRegistrationForm
from .models import UserProfile
import uuid
import os
import random
import linecache
import psycopg2
from django.contrib.auth import get_user_model
from django import template
from django.template.defaultfilters import stringfilter
User = get_user_model()
gpost1=''
gpost2=' '
scoreg=' '
unameg=' '
uidg=' '
def home(request):
    c={}
    c.update(csrf(request))
    return render_to_response('login.html',c)

def contentbf(dbscore):
    i=1
    conn = psycopg2.connect(database="pfd", user="pfd",password="vinu")
    mark=conn.cursor()
    if dbscore == '0':
        mark.execute("SELECT * from dataset1 where score = '1.0' or score='2.0';")
    elif dbscore == '1':
        mark.execute("SELECT * from dataset1 where score = '3.0' or score='4.0';")
    elif dbscore == '2':
        mark.execute("SELECT * from dataset1 where score = '5.0';")
    var1=mark.fetchall()
    rows_affected=mark.rowcount
    pre='';
    for l in range(9):
        ran=random.randint(0,rows_affected)
        pre += "<a href='/review/?p_id="+var1[ran][0]+"&r_id="+var1[ran][1]+"'><div class='col-md-4 col-sm-6'>" + \
               "<div class='service-item' id='service-"+str(i)+"'>" + \
               "<div class='service-icon'>" + \
               "<i class='fa fa-user'></i>" + \
               "</div> <!-- /.service-icon -->" + \
               "<div class='service-content'>" + \
               "  <div class='inner-service'><h1>" + \
               "Product Id  :" + var1[ran][0] + \
               "<br>Reviewer Id :" + var1[ran][1] + \
               "<br>Reviewer Name:"+ var1[ran][2]+ \
               "<br>Helpfulness : "+ var1[ran][3] + \
               "<br>Score :"+ var1[ran][4]+ \
               "<br>Summary:"+var1[ran][5]+ \
               "</h1></div>" + \
               "</div> <!-- /.service-content -->" + \
               "</div> <!-- /#service-1 --> "+ \
               "</div> <!-- /.col-md-4 --></a>"
        i=i+1 #for coloring box 
        
    return pre

def log_in(request):
    global uidg
    global unameg
    global scoreg
    context = RequestContext(request)
    if request.method == 'POST':
        username = request.POST.get('username','')
        password = request.POST.get('password','')
        user = auth.authenticate(username=username, password=password)
        if user is not None:
            auth.login(request,user)
            uidg=user.userid
            unameg=user.username
            scoreg=user.scoreop
            return HttpResponseRedirect('/loggedin/')
        else:
            return HttpResponseRedirect('/error/')

    return render_to_response('/error.html')

def logouti(request):
    auth.logout(request)
    return HttpResponseRedirect('/')


def create_acc(request):
    if request.method == 'POST':
        form = MyRegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/regsuccess/')
    args = {}
    args.update(csrf(request))
    args['form'] = MyRegistrationForm()
    return render_to_response('signup.html',args)
    
def regsuccess(request):
    return render_to_response('regsuccess.html');    
def errori(request):
    return render_to_response('error.html');

'''@login_required(redirect_field_name=None)'''
def loggedin(request):
    a=contentbf(scoreg)
    b=collabora()
    c=hybrrecom(uidg)
    return render_to_response('in.html',
                              {'full_name':unameg,
                               'u_id':uidg,
                               'scoreop':scoreg,
                               'post_con':a,
                               'post_col':b,
                               'post_hyb':c})


def collabora():
    q = 'B0019CW0HE'
    conn1 = psycopg2.connect(database="pfd", user="pfd",password="vinu")
    mark1=conn1.cursor()
    mark1.execute("SELECT * from dataset1 where pid = '"+q+"';")
    var2=mark1.fetchall()
    rows_affected=mark1.rowcount
    pre='';
    if rows_affected==0:
        pre='Sorry No Pref Found'
    else:
        if(rows_affected<9):
            for row in var2:
                pre += "<a href='/review/?p_id="+row[0]+"&r_id="+row[1]+"'><div class='col-md-4 col-sm-6'>" + \
                       "<div class='service-item' id='service-1'>" + \
                       "<div class='service-icon'>" + \
                       "<i class='fa fa-user'></i>" + \
                       "</div> <!-- /.service-icon -->" + \
                       "<div class='service-content'>" + \
                       "  <div class='inner-service'><h1>" + \
                       "Product Id  :" + row[0] + \
                       "<br>Reviewer Id :" + row[1] + \
                       "<br>Reviewer Name:"+ row[2]+ \
                       "<br>Helpfulness : "+ row[3] + \
                       "<br>Score :"+ row[4]+ \
                       "<br>Summary:"+row[5]+ \
                       "</h1></div>" + \
                       "</div> <!-- /.service-content -->" + \
                       "</div> <!-- /#service-1 --> "+ \
                       "</div> <!-- /.col-md-4 --></a>"
        else:      
            for l in range(9):
                ran=random.randint(0,rows_affected)
                pre += "<a href='/review/?p_id="+var2[ran][0]+"&r_id="+var2[ran][1]+"'><div class='col-md-4 col-sm-6'>" + \
                       "<div class='service-item' id='service-1'>" + \
                       "<div class='service-icon'>" + \
                       "<i class='fa fa-user'></i>" + \
                       "</div> <!-- /.service-icon -->" + \
                       "<div class='service-content'>" + \
                       "  <div class='inner-service'><h1>" + \
                       "Product Id  :" + var2[ran][0] + \
                       "<br>Reviewer Id :" + var2[ran][1] + \
                       "<br>Reviewer Name:"+ var2[ran][2]+ \
                       "<br>Helpfulness : "+ var2[ran][3] + \
                       "<br>Score :"+ var2[ran][4]+ \
                       "<br>Summary:"+var2[ran][5]+ \
                       "</h2></div>" + \
                       "</div> <!-- /.service-content -->" + \
                       "</div> <!-- /#service-1 --> " + \
                       "</div> <!-- /.col-md-4 --></a>"
    return pre

def review(request):
    p_id1=request.GET.get('p_id','')
    r_id=request.GET.get('r_id','')
    conn1 = psycopg2.connect(database="pfd", user="pfd",password="vinu")
    mark1=conn1.cursor()
    mark1.execute("SELECT * from dataset1 where pid = '"+p_id1+"' and u_id='"+r_id+"';")
    var2=mark1.fetchall()
    rname=var2[0][2]
    helpf=var2[0][3]
    score=var2[0][4]
    sumi1=var2[0][5]
    text1=var2[0][6]
    return render_to_response('in1.html',
                       {'p_id':p_id1,
                        'r_id':r_id,
                        'rname':rname,
                        'helpf':helpf,
                        'score':score,
                        'sumi1':sumi1,
                        'text1':text1,
                        'full_name':unameg,
                        'u_id':uidg})

def hybrrecom(u_id1):
    sum1=0
    i=1
    conn1 = psycopg2.connect(database="pfd", user="pfd",password="vinu")
    mark1=conn1.cursor()
    mark1.execute("SELECT * from recom_iprefi where userid = '"+u_id1+"';")
    var2=mark1.fetchall()
    rows_affected=mark1.rowcount
    pre1='';
    for row in var2:
        sum1=sum1+int(float(row[3]));
    if rows_affected == 0:
        pre1='Sorry No review'
    else:
        avg1=int(sum1/rows_affected)
        avx=float(avg1)
        avx=round(avx,1)
        mark1.execute("SELECT * from dataset1 where score = '"+str(avx)+"';")
        var1=mark1.fetchall()
        rows_affected1=mark1.rowcount
        for l in range(9):
            ran=random.randint(0,rows_affected1)
            pre1 += "<a href='/review/?p_id="+var1[ran][0]+"&r_id="+var1[ran][1]+"'><div class='col-md-4 col-sm-6'>" + \
                   "<div class='service-item' id='service-"+str(i)+"'>" + \
                   "<div class='service-icon'>" + \
                   "<i class='fa fa-user'></i>" + \
                   "</div> <!-- /.service-icon -->" + \
                   "<div class='service-content'>" + \
                   "  <div class='inner-service'><h1>" + \
                   "Product Id  :" + var1[ran][0] + \
                   "<br>Reviewer Id :" + var1[ran][1] + \
                   "<br>Reviewer Name:"+ var1[ran][2]+ \
                   "<br>Helpfulness : "+ var1[ran][3] + \
                   "<br>Score :"+ var1[ran][4]+ \
                   "<br>Summary:"+var1[ran][5]+ \
                   "</h1></div>" + \
                   "</div> <!-- /.service-content -->" + \
                   "</div> <!-- /#service-1 --> " + \
                   "</div> <!-- /.col-md-4 --></a>"
            i=i+1
        
    return pre1

        
    
