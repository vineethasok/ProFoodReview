import linecache
import random
import os
def collabora:
    x=os.path.join(os.path.dirname(os.path.dirname(__file__)),'recom//pfood.txt')
    f=open(x,'r')
    pre1='';
    num_lines = sum(1 for line in open(x))
    y=int(num_lines/8)
    q = ' B001E4KFG0'
    p=1
    print(q)
    for l in range(y):
        s=linecache.getline(x,p)
        a,b=s.split( ':' , 1 )
        b= b.rstrip('\n')
        if b==q:
            s1=linecache.getline(x,p+4)
            a1,b1=s1.split(':',1)
            s2=linecache.getline(x,p+1)
            a2,b2=s2.split(':',1 )
            s3=linecache.getline(x,p+2)
            a3,b3=s3.split( ':', 1 )
            s4=linecache.getline(x,p+3)
            a4,b4=s4.split( ':', 1)
            pre1 += "<div class='col-md-4 col-sm-6'>" + \
                  "<div class='service-item' id='service-1'>" + \
                  "<div class='service-icon'>" + \
                  "<i class='fa fa-pencil-square-o'></i>" + \
                  "</div> <!-- /.service-icon -->" + \
                  "<div class='service-content'>" + \
                  "  <div class='inner-service'>" + \
                  "Product Id  :" + b1 + \
                  "Reviewer Id :" + b2 + \
                  "Reviewer Name:"+ b3 + \
                  "Helpfulness : "+ b4 + \
                  "Score :"+ b + \
                  "</div>" + \
                  "</div> <!-- /.service-content -->" + \
                  "</div> <!-- /#service-1 --> "+ \
                  "</div> <!-- /.col-md-4 -->"
        p=p+8;
    return pre1
