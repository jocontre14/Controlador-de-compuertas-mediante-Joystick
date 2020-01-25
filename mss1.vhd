LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY mss1 IS
	PORT(clock,reset,start,beta,consultar,in1,in2,in3,ap1,ap2,ap3,cp1,cp2,cp3,enrc3,enrc5,enrc7,enrc9,seg3,ct2: IN STD_LOGIC;
		  en1,en2,en3,en4,en5,en6,en7,en8,en9,s1,s2,s3,enc1,ld1,rc1,rc2,rc4,rc6,rc8,rc9,rc10,rrg,ener1,ener2,enp1,enp2,enp3,p1,p2,p3,buzz,lederror: out STD_LOGIC);
END mss1;

ARCHITECTURE solucion OF mss1 IS
Type estado is (Tv1,Tv2,Tv3,Tv4,Tv51,Tv52,TV53,Tv54,Tv61,Tv62,TV63,Tv64,Tv71,Tv72,TV73,Tv74,TA1,TA2,TA3,TA4,TA5,TA6,Ta,Tb,Tc,tc1,Td,Te,Tf,Tg,Th,Th1,Th2,Th3,Th4,Th5,Th6,Tk,Tk1,Tk2,Tk3,Tk4,Tk5,Tk6,Tm,Tm1,Tm2,Tm3,Tm4,Tm5,Tm6,Tn,Tn1,Tn2,Tn3,Tn4,Tp,Tp1,Tp2,Tp3,Tp4,Tp5,Tp6,Tp7,Tp8);
SIGNAL y:estado;
BEGIN
	PROCESS(clock,reset)
	BEGIN
		if reset='0' then y<=Ta;
  		elsif (clock'event and clock='1') then
			case y is
				when Ta=> 	if start='1' then y<=Tb;
								else y<=Ta;
								end if;
				when Tb=>	if start='1' then y<=Tb;
								else y<=Tc;
								end if;
				when Tc=>	if beta='1' then y<=Td;
								else y<=Tc1; end if;
				when Tc1=>	y<=Tc;

				when Td=>	y<=Tv1;

				when Tv1=>	if beta='1' then y<=Tv1;
								else y<=Te; end if;
				when Te=>	y<=Tv2;
				when Tv2=>	if beta='0' then y<=Tv2;
								else y<=Tf; end if;
				when Tf=>	y<=Tv3;
				when Tv3=>	if beta='1' then y<=Tv3;
								else y<=Tg; end if;
				when Tg=>	y<=Tv4;
				when Tv4=>	if in1='1' then y<=Th;
								elsif in2='1' then y<=Tk;
								elsif in3='1' then y<= Tm;
								else y<=Tn; end if;
				when Th=>	y<=Tv51;			
				when Tv51=>	if beta='1' then y<=Th1;
								else y<=Tv51; end if;
				when Th1=>	y<=Tv52;		
				when Tv52=>	if beta='0' then y<=Th2;
								else y<=Tv52; end if;
				when Th2=>	y<=TA5;
				when TA5=> y<=Th3;
				when Th3=>	y<=Tv53;
				when Tv53=>	if beta='1' then y<=Th4;
								else y<=Tv53; end if;
								
				when Th4=>	y<=Tv54;
				when Tv54=>	if beta='0' then y<=Th5;
								else y<=Tv54; end if;
				when Th5=> y<=TA6;
				when TA6=>	y<=Th6;
				when Th6=> y<=Tp;
				
				
				
				
				when Tk=>	y<=Tv61;
				when Tv61=>	if beta='1' then y<=Tk1;
								else y<=Tv61; end if;
			
				when Tk1=>	y<=Tv62;
				when Tv62=>	if beta='0' then y<=Tk2;
								else y<=Tv62; end if;
								
				
				when Tk2=>	y<=TA3;
				when TA3=>	y<=Tk3;
				when Tk3=>	y<=Tv63;
				when Tv63=>	if beta='1' then y<=Tk4;
								else y<=Tv63; end if;
				when Tk4=>	y<=Tv64;
				when Tv64=>	if beta='0' then y<=Tk5;
								else y<=Tv64; end if;
				when Tk5=>	y<=TA4;
				when TA4=>	y<=Tk6;
				when Tk6=>	y<=Tp;
				
				when Tm=>	y<=Tv71;
				when Tv71=>	if beta='1' then y<=Tm1;
								else y<=Tv71; end if;
				when Tm1=>	y<=Tv72;
				when Tv72=>	if beta='0' then y<=Tm2;
								else y<=Tv72; end if;
				when Tm2=>	y<=TA1;
				when TA1=>	y<=Tm3;
				when Tm3=>	y<=Tv73;
				when Tv73=>	if beta='1' then y<=Tm4;
								else y<=Tv73; end if;
				when Tm4=>	y<=Tv74;
				when Tv74=>	if beta='0' then y<=Tm5;
								else y<=Tv74; end if;
				when Tm5=>	y<=TA2;
				when TA2=>	y<=Tm6;
				when Tm6=>	y<=Tp;
				
				
				
				
				when Tn=>	if beta='1' then y<=Tn1;
								else y<=Tn; end if;
				when Tn1=>	if beta='0' then y<=Tn2;
								else y<=Tn1; end if;
				when Tn2=>	if beta='1' then y<=Tn3;
								else y<=Tn2; end if;
				when Tn3=>	if beta='0' then y<=Tn4;
								else y<=Tn3; end if;
				when Tn4=>	y<=Tp;
				
				
				when Tp=>	if ap1='1' then y<=Tp1;
								elsif ap2='1' then y<=Tp2;
								elsif ap3='1' then y<= Tp3;
								elsif enrc9='1' then y<=Tp5;
							   else y<=Tp6;	end if;
				when Tp1=>	if cp1='1' then y<=Tp4;
								else y<=Tp1; end if;
				when Tp2=>	if cp2='1' then y<=Tp4;
								else y<=Tp2; end if;
				when Tp3=>	if cp3='1' then y<=Tp4;
								else y<=Tp3; end if;
				when Tp4=> y<=Tc;
				when Tp5=>	if seg3='1' then y<=Tp7;
								else y<=Tp5; end if;
				when Tp6=>	if ct2='1' then y<=Tp8;
								else y<=Tp6; end if;
				when Tp7=> y<=Tc;
				when Tp8=> y<=Tc;
				
				end case;
				end if;

								end PROCESS;
PROCESS(y)
	BEGIN
	s1<= '0';s2<= '0';s3<= '0';en1<= '0';rrg<='1';en2<= '0';en3<= '0';en4<= '0';en5<= '0';en6<= '0';en7<= '0';en8<= '0';en9<= '0';enc1<= '0';ld1<= '0';rc1<= '1';rc2<= '1';rc4<= '1';rc6<= '1';rc8<= '1';rc9<= '1';rc10<= '1';ener1<= '0';ener2<= '0';enp1<= '0';enp2<= '0';enp3<= '0';p1<= '0';p2<= '0';p3<= '0';buzz<= '0';lederror<= '0';
			case y is
				when Ta=> 	p1<= '0';p2<= '0';p3<= '0';buzz<= '0';lederror<= '0';
				when Tb=>	rrg<='0';rc1<= '0';rc2<= '0';rc4<= '0';rc6<= '0';rc8<= '0';rc9<= '0';rc10<= '0';
				when Tc=>	
				when Tc1=>	
				when Td=>	en1<= '1';en3<= '1';
				when Te=>	en2<= '1';
				when Tf=>	en1<= '1';en3<= '1';	s1<= '1';
				when Tg=>	en2<= '1';
				when Th=>	s2<= '1';s3<= '1';enc1<= '1';ld1<= '1';
				when Th1=>	en1<= '1';en3<= '1';	s1<= '1';
				when Th2=> en2<= '1';enc1<= '1';
				when Th3=>	en4<= '1';
				when Th4=>	en1<= '1';en3<= '1';	s1<= '1';
				when Th5=> en2<= '1';enc1<= '1';
				when Th6=> en5<= '1';
				
				
				
				when Tk=>	s3<= '1';enc1<= '1';ld1<= '1';
				when Tk1=>	en1<= '1';en3<= '1';	s1<= '1';
				when Tk2=>	en2<= '1';enc1<= '1';
				when Tk3=>	en6<= '1';
			
				when Tk4=>	en1<= '1';en3<= '1';	s1<= '1';
				when Tk5=>	en2<= '1';enc1<= '1';
				when Tk6=>	en7<= '1';
				
				
				when Tm=>	s2<= '1';enc1<= '1';ld1<= '1';
				when Tm1=>	en1<= '1';en3<= '1';	s1<= '1';
				when Tm2=>	en2<= '1';enc1<= '1';
				when Tm3=>	en8<= '1';
				when Tm4=>	en1<= '1';en3<= '1';	s1<= '1';
				when Tm5=>	en2<= '1';enc1<= '1';
				when Tm6=>	en9<= '1';
				
				
				when Tn=>	
				when Tn1=>	
				when Tn2=>	
				when Tn3=>	
				when Tn4=>	ener1<= '1';
				
				when Tv1=>
				when Tv2=>
				when Tv3=>
				when Tv4=>
				when Tv51=>
				when Tv52=>
				when Tv53=>
				when Tv54=>
				when Tv61=>
				when Tv62=>
				when Tv63=>
				when Tv64=>
				when Tv71=>
				when Tv72=>
				when Tv73=>
				when Tv74=>
				
				when TA1=>
				when TA2=>
				when TA3=>
				when TA4=>
				when TA5=>
				when TA6=>
				
				
				when Tp=>	rc1<= '0';
				when Tp1=>	enp1<= '1';p1<= '1';
								if enrc3='1' then rc2<= '0';end if;
				when Tp2=>	enp2<= '1';p2<= '1';
								if enrc5='1' then rc4<= '0';end if;
				when Tp3=>	enp3<= '1';p3<= '1';
								if enrc7='1' then rc6<= '0';end if;
				when Tp4=>  rc2<= '0';rc4<= '0';rc6<= '0';rrg<='0';
				when Tp5=>	buzz<= '1'; 
								if enrc9='1' then rc8<='0'; end if;
				when Tp6=>	ener2<= '1';lederror<= '1';
				when Tp7=> rc9<= '0';rc8<= '0';
				when Tp8=> rc10<= '0';
				end case;
	END PROCESS;
END solucion;
