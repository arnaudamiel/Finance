function FV(Rate=0,Nper=0,Pmt=0,Pv=0,Type=0)
    round(Pv*(1+Rate)^Nper,2)
end

function PV(Rate=0,Nper=0,Pmt=0,Fv=0,Type=0)
    round(Fv/(1+Rate)^Nper,2)
end
