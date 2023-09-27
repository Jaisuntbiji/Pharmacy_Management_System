from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.shortcuts import redirect
from django.urls import reverse
from datetime import date, timedelta
from  django.core.files.storage import FileSystemStorage
from .models import *

def index(request):
    sel=drug.objects.all()
    return render(request,'index.html',{'result':sel})
    
def readmin(request):
    return render(request,'readmin.html')
def login(request):
    return render(request,'login.html')
def register(request):
    return render(request,'register.html')
def productt(request):
    sel=drug.objects.all()
    today = date.today()
    expiry_range = today + timedelta(days=10)  # Set the expiry range (e.g., next 30 days)
    
    drugs = drug.objects.filter(expdate__lte=expiry_range)
    return render(request,'productt.html',{'result':sel,'drugs': drugs})

# def drug_expiry_alert(request):
#     today = date.today()
#     expiry_range = today + timedelta(days=10)  # Set the expiry range (e.g., next 30 days)
    
#     drugs = drug.objects.filter(expdate=expiry_range)
    
#     return render(request, 'productt.html', {'drugs': drugs})

def drugupdt(request,id):
    upd=drug.objects.get(id=id)
    return render(request,'updtdrug.html',{'result':upd})

def updtdrug(request,id):
    if request.method=="POST":
        name=request.POST.get('name')
        genericname=request.POST.get('genericname')
        dosage=request.POST.get('dosage')
        form=request.POST.get('form')
        manufature=request.POST.get('manufature')
        expdate=request.POST.get('expdate')
        price=request.POST.get('price')
        qty=request.POST.get('qty')
        myfile=request.FILES['image']
        fs= FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        
        donor=drug(name=name,genericname=genericname,dosage=dosage,form=form,manufature=manufature,expdate=expdate,price=price,qty=qty,image=myfile,id=id)
        donor.save()
        return redirect(productt)

def drugdelete(request,id):
    sel=drug.objects.get(id=id)
    sel.delete()
    return redirect(productt)



def adddoctor(request):
    return render(request,'adddoctor.html')
def viewuserproduct(request):
    sel=drug.objects.all()
    return render(request,'viewuserproduct.html',{'result':sel})
def viewdoctorproduct(request):
    sel=drug.objects.all()
    return render(request,'viewdoctorproduct.html',{'result':sel})
  
def viewuserdoctor(request):
    sel=doctor.objects.all()
    return render(request,'viewuserdoctor.html',{'result':sel})
   
def viewuserpaid(request):
    sel=payment.objects.filter(uid=request.session['uid'])
    sel1=drug.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.pid)==str(j.id):
                i.pid=j.name
    return render(request,'viewpaidd.html',{'result':sel})
    
def userprescribe(request):
    sel=consult.objects.filter(uid=request.session['uid'],status='consult')
    sel1=doctor.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.did)==str(j.id):
                i.did=j.name
    return render(request,'userprescribe.html',{'result':sel})
    
def viewuserconsult(request):
    sel=consult.objects.filter(did=request.session['did'],status='pending')
    sel1=user.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.uid)==str(j.id):
                i.uid=j.name
    return render(request,'vieww.html',{'result':sel})
    
def buy(request,id):
    sel=drug.objects.get(id=id)
    return render(request,'buy.html',{'result':sel})
    
def dtt(request,id):
    sel=consult.objects.get(id=id)
    return render(request,'dc.html',{'result':sel})
    
def consult1(request,id):
    sel=doctor.objects.get(id=id)
    return render(request,'consult.html',{'result':sel})
def addpro(request,id):
    sel=drug_req.objects.get(id=id)
    return render(request,'drugg.html',{'result':sel})
def viewdoctorreq(request):
    sel=drug_req.objects.filter(status='pending')
    sel1=doctor.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.did)==str(j.id):
                i.did=j.name
        
    return render(request,'viewdreq.html',{'result':sel})
def viewadminpayment(request):
    sel=payment.objects.all()
    sel1=user.objects.all()
    sel2=drug.objects.all()
    for i in sel:
        for j in sel1:
            if str(i.uid)==str(j.id):
                i.uid=j.name
        for k in sel2:
            if str(i.pid)==str(k.id):
                i.pid=k.name
    return render(request,'viewadminpayment.html',{'result':sel})

def adddrug(request):
    if request.method=="POST":
        name=request.POST.get('name')
        genericname=request.POST.get('genericname')
        dosage=request.POST.get('dosage')
        form=request.POST.get('form')
        manufature=request.POST.get('manufature')
        expdate=request.POST.get('expdate')
        price=request.POST.get('price')
        qty=request.POST.get('qty')
        myfile=request.FILES['image']
        fs= FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        
        donor=drug(name=name,genericname=genericname,dosage=dosage,form=form,manufature=manufature,expdate=expdate,price=price,qty=qty,image=myfile)
        donor.save()
        return redirect(productt)
   
def finall(request):
    if request.method=="POST":
        idd=request.POST.get('idd')
        name=request.POST.get('name')
        genericname=request.POST.get('genericname')
        dosage=request.POST.get('dosage')
        form=request.POST.get('form')
        manufature=request.POST.get('manufature')
        expdate=request.POST.get('expdate')
        price=request.POST.get('price')
        qty=request.POST.get('qty')
        myfile=request.FILES['image']
        fs= FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        sel=drug_req.objects.get(id=idd)
        name1=sel.name
        genericname1=sel.genericname	
        dosage1=sel.dosage
        form1=sel.form
        manufature1=sel.manufature
        did1=sel.did
        idd1=sel.id
        donor1=drug_req(name=name1,genericname=genericname1,dosage=dosage1,form=form1,manufature=manufature1,did=did1,status='approve',id=idd1)
        donor1.save()
        donor=drug(name=name,genericname=genericname,dosage=dosage,form=form,manufature=manufature,expdate=expdate,price=price,qty=qty,image=myfile)
        donor.save()
        return redirect(viewdoctorreq)
    
def requu(request):
    if request.method=="POST":
        name=request.POST.get('name')
        genericname=request.POST.get('genericname')
        dosage=request.POST.get('dosage')
        form=request.POST.get('form')
        manufature=request.POST.get('manufature')
        did=request.session['did']

        donor=drug_req(name=name,genericname=genericname,dosage=dosage,form=form,manufature=manufature,did=did,status='pending')
        donor.save()
        return render(request,'readmin.html',{'status':' Successfully Added'})
        
def logout(request):
    session_keys = list(request.session.keys())
    for key in session_keys:
        del request.session[key]
    return redirect(index)
def adduser(request):
    if request.method=="POST":
        name=request.POST.get('name')
        email=request.POST.get('email')
        phone=request.POST.get('phone')
        address=request.POST.get('address')
        password=request.POST.get('password')
        age=request.POST.get('age')

        donor=user(name=name,email=email,phone=phone,address=address,password=password,age=age)
        donor.save()
        return render(request,'register.html',{'status':'Register Successfully'})
    
def addconsult(request):
    if request.method=="POST":
        des=request.POST.get('des')
        date=request.POST.get('date')
        did=request.POST.get('did')
        medicine=request.POST.get('medicine')
        uid=request.session['uid']
        file = request.FILES['file']
        fs = FileSystemStorage()
        file = fs.save(file.name,file)
        

        donor=consult(did=did,uid=uid,date=date,des=des,file=file,medicine=medicine,status='pending')
        donor.save()
        return redirect(viewuserdoctor)

def addd(request):
    if request.method=="POST":
        name=request.POST.get('name')
        email=request.POST.get('email')
        phone=request.POST.get('phone')
        address=request.POST.get('address')
        password=request.POST.get('password')
        age=request.POST.get('age')
        specialization=request.POST.get('specialization')
        experience=request.POST.get('experience')

        donor=doctor(specialization=specialization,experience=experience,name=name,email=email,phone=phone,address=address,password=password,age=age)
        donor.save()
        return render(request,'adddoctor.html',{'status':' Successfully Added'})

def paid(request):
    
    if request.method=="POST":
        pid=request.POST.get('pid')
        cardname=request.POST.get('cardname')
        cardnumber=request.POST.get('cardnumber')
        qty1=int(request.POST.get('qty'))
        cvv=request.POST.get('cvv')
        uid=request.session['uid'] 
        a=drug.objects.get(id=pid)
        name=a.name
        genericname=a.genericname
        dosage=a.dosage
        form=a.form
        manufature=a.manufature
        qty=a.qty
        price=int(a.price)
        total=qty1*price
        image=a.image
        expdate=a.expdate
        idd=a.id
        donor1=drug(name=name,genericname=genericname,dosage=dosage,form=form,manufature=manufature,expdate=expdate,price=price,qty=qty,image=image,id=idd)
        donor1.save()
        donor=payment(pid=pid,uid=uid,cardname=cardname,cardnumber=cardnumber,qty=qty1,price=total,cvv=cvv)
        donor.save()
        return redirect(viewuserproduct)
        
        
        
def dconsult(request):
    if request.method == "POST":
        cid = request.POST.get('cid')
        prescription = request.POST.get('prescription')
        a = consult.objects.get(id=cid)
        did = a.did
        uid = a.uid
        des = a.des
        date = a.date
        file = a.file
        medicine = a.medicine

        # Split the medicine and prescription fields into lists of individual items
        consult_medicines = [m.strip() for m in medicine.split(',')]
        consult_prescriptions = [p.strip() for p in prescription.split(',')]

        for consult_med in consult_medicines:
            for consult_pres in consult_prescriptions:
                # Check if the consult medicine matches any medicine in drug_interaction table
                interaction_exists = drug_interaction.objects.filter(medicine=consult_med).exists()

                if interaction_exists:
                    # Check if the nonmedicine in drug_interaction is the same as the prescription in consult table
                    matching_interaction = drug_interaction.objects.filter(medicine=consult_med, nonmedicine=consult_pres).exists()

                    if matching_interaction:
                        # Display an alert or take any action for the alert 
                        sel = consult.objects.filter(did=request.session['did'], status='pending')
                        sel1 = user.objects.all()
                        for i in sel:
                            for j in sel1:
                                if str(i.uid) == str(j.id):
                                    i.uid = j.name
                        return render(request, 'vieww.html', {'msg': 'The prescribed medicine has a potential drug interaction with the medicine used by the patient.', 'result': sel})

        idd = a.id

        donor1 = consult(did=did, file=file, uid=uid, des=des, date=date, medicine=medicine, prescription=prescription, status='consult', id=idd)
        donor1.save()
    return redirect(viewuserconsult)
    
def nonmed(request):
    return render(request,'nonusemed.html')

def addnonmed(request):
    if request.method=="POST":
        medicine=request.POST.get('medicine')
        nonmedicine=request.POST.get('nonmedicine')
       

        donor=drug_interaction(nonmedicine=nonmedicine,medicine=medicine)
        donor.save()
        return render(request,'nonusemed.html',{'status':' Successfully Added'})


def addlogin(request):
    email = request.POST.get('email')
    password = request.POST.get('password')
    if email == 'admin@gmail.com' and password =='admin':
        request.session['logintdetail'] = email
        request.session['admin'] = 'admin'
        return render(request,'index.html')

    elif user.objects.filter(email=email,password=password).exists():
        userdetails=user.objects.get(email=request.POST['email'], password=password)
        if userdetails.password == request.POST['password']:
            request.session['uaddress']=userdetails.address
            request.session['uid'] = userdetails.id
            request.session['uname'] = userdetails.name

            request.session['uemail'] = email

            request.session['user'] = 'user'


            return render(request,'index.html')


    elif doctor.objects.filter(email=email,password=password).exists():
        userdetails=doctor.objects.get(email=request.POST['email'], password=password)
        if userdetails.password == request.POST['password']:
            request.session['did'] = userdetails.id
            request.session['tname'] = userdetails.name

            request.session['temail'] = email

            request.session['doctor'] = 'doctor'


            return render(request,'index.html')
    
    else:
        return render(request, 'login.html', {'status': 'Invalid Email or Password'})
        
        
      