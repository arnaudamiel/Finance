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
