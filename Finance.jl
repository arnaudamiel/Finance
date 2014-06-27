#Implements Future Value calculation as per Excel
#Type = 1 means payment at start of period
function FV(Rate=0,Nper=0,Pmt=0,Pv=0,Type=0)
    Fv = (-1*Pv*(1 + Rate)^Nper - Pmt*(1 + Rate*Type)*(((1 + Rate)^Nper - 1)/Rate))
	round(Fv, 2)
end

#######################################

#Implements Present Value calculation as per Excel
#Type = 1 means payment at start of period
function PV(Rate=0,Nper=0,Pmt=0,Fv=0,Type=0)
    Pv = (-1*Fv - Pmt*(1 + Rate*Type)*(((1 + Rate)^Nper - 1)/Rate))/(1 + Rate)^Nper
	round(Pv, 2)
end

#######################################

#Implements Payment calculation as per Excel
#Type = 1 means payment at start of period
function PMT(Rate=0,Nper=0,Pv=0,Fv=0,Type=0)
    Pmt = (-1*Fv - Pv*(1 + Rate)^Nper)/((1 + Rate*Type)*((1 + Rate)^Nper - 1)/Rate)
	round(Pmt, 2)
end

#######################################

#Implements Effective Annual Rate calculation as per Excel
function EFFECT(Nominal_rate,Npery)
	Effect = ((1 + Nominal_rate/Npery)^Npery - 1)
	round(Effect, 6)
end

#######################################

#Implements Net Present Value calculation as per Excel
#Add the option of adding inital payment
function NPV(Rate,Cash_Flow,InitialPayment=0)
	npv=0
	for i in 1:length(Cash_Flow)
		npv += Cash_Flow[i] / (1+Rate)^i
	end
	npv += InitialPayment
	round(npv, 2)
end

#######################################

#Implements Internal Rate of Return calculation as per Excel
function IRR(Cash_Flow,Guess=0.1)
	initial=Cash_Flow[1]
	values=Cash_Flow[2:length(Cash_Flow)]
	
	rate=Guess
	oldRate=Guess+0.01
	
	while (abs((rate-oldRate)/rate) > 0.0000001)
		newRate=rate-NPV(rate,values,initial)*((rate-oldRate)/(NPV(rate,values,initial)-NPV(oldRate,values,initial)))
		oldRate=rate
		rate=newRate
	end
	round(rate,2)
end
