function FV(Rate=0,Nper=0,Pmt=0,Pv=0,Type=0)
    round((-1*Pv*(1 + Rate)^Nper - Pmt*(1 + Rate*Type)*(((1 + Rate)^Nper - 1)/Rate)),2)
end

function PV(Rate=0,Nper=0,Pmt=0,Fv=0,Type=0)
    round((-1*Fv - Pmt*(1 + Rate*Type)*(((1 + Rate)^Nper - 1)/Rate))/(1 + Rate)^Nper,2)
end

function PMT(Rate=0,Nper=0,Pv=0,Fv=0,Type=0)
    round((-1*Fv - Pv*(1 + Rate)^Nper)/((1 + Rate*Type)*((1 + Rate)^Nper - 1)/Rate),2)
end
