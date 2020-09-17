%Variance of Daily Return Code

close all;
clear all; 
clear all; 


before = load('before_crisis.csv');
during = load('during_crisis.csv');
after = load('after_crisis.csv');

US_b = before(:,1:3);
Can_b = before(:,4);
Mex_b = before(:,5);
Bra_b = before(:,6);
Chi_b = before(:,7);
Col_b = before(:,8);
Arg_b = before(:,9);
Per_b = before(:,10);
Eur_b = before(:,11);
UK_b = before(:,12);
Fra_b = before(:,13);
Ger_b = before(:,14);
Esp_b = before(:,15);
Ita_b = before(:,16);
Ned_b = before(:,17);
Swe_b = before(:,18);
Swi_b = before(:,19);
Rus_b = before(:,20);
Jpn_b = before(:,21);
HK_b = before(:,22);
Chn_b = before(:,23);
Aus_b = before(:,24);
Kor_b = before(:,25);
Ind_b = before(:,26);
Tai_b = before(:,27);
Indo_b = before(:,28);
Mal_b = before(:,29);
Sin_b = before(:,30);

US_d = during(:,1:3);
Can_d = during(:,4);
Mex_d = during(:,5);
Bra_d = during(:,6);
Chi_d = during(:,7);
Col_d = during(:,8);
Arg_d = during(:,9);
Per_d = during(:,10);
Eur_d = during(:,11);
UK_d = during(:,12);
Fra_d = during(:,13);
Ger_d = during(:,14);
Esp_d = during(:,15);
Ita_d = during(:,16);
Ned_d = during(:,17);
Swe_d = during(:,18);
Swi_d = during(:,19);
Rus_d = during(:,20);
Jpn_d = during(:,21);
HK_d = during(:,22);
Chn_d = during(:,23);
Aus_d = during(:,24);
Kor_d = during(:,25);
Ind_d = during(:,26);
Tai_d = during(:,27);
Indo_d = during(:,28);
Mal_d = during(:,29);
Sin_d = during(:,30);

US_a = after(:,1:3);
Can_a = after(:,4);
Mex_a = after(:,5);
Bra_a = after(:,6);
Chi_a = after(:,7);
Col_a = after(:,8);
Arg_a = after(:,9);
Per_a = after(:,10);
Eur_a = after(:,11);
UK_a = after(:,12);
Fra_a = after(:,13);
Ger_a = after(:,14);
Esp_a = after(:,15);
Ita_a = after(:,16);
Ned_a = after(:,17);
Swe_a = after(:,18);
Swi_a = after(:,19);
Rus_a = after(:,20);
Jpn_a = after(:,21);
HK_a = after(:,22);
Chn_a = after(:,23);
Aus_a = after(:,24);
Kor_a = after(:,25);
Ind_a = after(:,26);
Tai_a = after(:,27);
Indo_a = after(:,28);
Mal_a = after(:,29);
Sin_a = after(:,30);

t = 30;

[Xs_US_b,m_US_b,n_US_b] = centered(US_b);
[Xs_Can_b,m_Can_b,n_Can_b] = centered(Can_b);
[Xs_Mex_b,m_Mex_b,n_Mex_b] = centered(Mex_b);
[Xs_Bra_b,m_Bra_b,n_Bra_b] = centered(Bra_b);
[Xs_Chi_b,m_Chi_b,n_Chi_b] = centered(Chi_b);
[Xs_Col_b,m_Col_b,n_Col_b] = centered(Col_b);
[Xs_Arg_b,m_Arg_b,n_Arg_b] = centered(Arg_b);
[Xs_Per_b,m_Per_b,n_Per_b] = centered(Per_b);
[Xs_Eur_b,m_Eur_b,n_Eur_b] = centered(Eur_b);
[Xs_UK_b,m_UK_b,n_UK_b] = centered(UK_b);
[Xs_Fra_b,m_Fra_b,n_Fra_b] = centered(Fra_b);
[Xs_Ger_b,m_Ger_b,n_Ger_b] = centered(Ger_b);
[Xs_Esp_b,m_Esp_b,n_Esp_b] = centered(Esp_b);
[Xs_Ita_b,m_Ita_b,n_Ita_b] = centered(Ita_b);
[Xs_Ned_b,m_Ned_b,n_Ned_b] = centered(Ned_b);
[Xs_Swe_b,m_Swe_b,n_Swe_b] = centered(Swe_b);
[Xs_Swi_b,m_Swi_b,n_Swi_b] = centered(Swi_b);
[Xs_Rus_b,m_Rus_b,n_Rus_b] = centered(Rus_b);
[Xs_Jpn_b,m_Jpn_b,n_Jpn_b] = centered(Jpn_b);
[Xs_HK_b,m_HK_b,n_HK_b] = centered(HK_b);
[Xs_Chn_b,m_Chn_b,n_Chn_b] = centered(Chn_b);
[Xs_Aus_b,m_Aus_b,n_Aus_b] = centered(Aus_b);
[Xs_Kor_b,m_Kor_b,n_Kor_b] = centered(Kor_b);
[Xs_Ind_b,m_Ind_b,n_Ind_b] = centered(Ind_b);
[Xs_Tai_b,m_Tai_b,n_Tai_b] = centered(Tai_b);
[Xs_Indo_b,m_Indo_b,n_Indo_b] = centered(Indo_b);
[Xs_Mal_b,m_Mal_b,n_Mal_b] = centered(Mal_b);
[Xs_Sin_b,m_Sin_b,n_Sin_b] = centered(Sin_b);

[Xs_US_d,m_US_d,n_US_d] = centered(US_d);
[Xs_Can_d,m_Can_d,n_Can_d] = centered(Can_d);
[Xs_Mex_d,m_Mex_d,n_Mex_d] = centered(Mex_d);
[Xs_Bra_d,m_Bra_d,n_Bra_d] = centered(Bra_d);
[Xs_Chi_d,m_Chi_d,n_Chi_d] = centered(Chi_d);
[Xs_Col_d,m_Col_d,n_Col_d] = centered(Col_d);
[Xs_Arg_d,m_Arg_d,n_Arg_d] = centered(Arg_d);
[Xs_Per_d,m_Per_d,n_Per_d] = centered(Per_d);
[Xs_Eur_d,m_Eur_d,n_Eur_d] = centered(Eur_d);
[Xs_UK_d,m_UK_d,n_UK_d] = centered(UK_d);
[Xs_Fra_d,m_Fra_d,n_Fra_d] = centered(Fra_d);
[Xs_Ger_d,m_Ger_d,n_Ger_d] = centered(Ger_d);
[Xs_Esp_d,m_Esp_d,n_Esp_d] = centered(Esp_d);
[Xs_Ita_d,m_Ita_d,n_Ita_d] = centered(Ita_d);
[Xs_Ned_d,m_Ned_d,n_Ned_d] = centered(Ned_d);
[Xs_Swe_d,m_Swe_d,n_Swe_d] = centered(Swe_d);
[Xs_Swi_d,m_Swi_d,n_Swi_d] = centered(Swi_d);
[Xs_Rus_d,m_Rus_d,n_Rus_d] = centered(Rus_d);
[Xs_Jpn_d,m_Jpn_d,n_Jpn_d] = centered(Jpn_d);
[Xs_HK_d,m_HK_d,n_HK_d] = centered(HK_d);
[Xs_Chn_d,m_Chn_d,n_Chn_d] = centered(Chn_d);
[Xs_Aus_d,m_Aus_d,n_Aus_d] = centered(Aus_d);
[Xs_Kor_d,m_Kor_d,n_Kor_d] = centered(Kor_d);
[Xs_Ind_d,m_Ind_d,n_Ind_d] = centered(Ind_d);
[Xs_Tai_d,m_Tai_d,n_Tai_d] = centered(Tai_d);
[Xs_Indo_d,m_Indo_d,n_Indo_d] = centered(Indo_d);
[Xs_Mal_d,m_Mal_d,n_Mal_d] = centered(Mal_d);
[Xs_Sin_d,m_Sin_d,n_Sin_d] = centered(Sin_d);

[Xs_US_a,m_US_a,n_US_a] = centered(US_a);
[Xs_Can_a,m_Can_a,n_Can_a] = centered(Can_a);
[Xs_Mex_a,m_Mex_a,n_Mex_a] = centered(Mex_a);
[Xs_Bra_a,m_Bra_a,n_Bra_a] = centered(Bra_a);
[Xs_Chi_a,m_Chi_a,n_Chi_a] = centered(Chi_a);
[Xs_Col_a,m_Col_a,n_Col_a] = centered(Col_a);
[Xs_Arg_a,m_Arg_a,n_Arg_a] = centered(Arg_a);
[Xs_Per_a,m_Per_a,n_Per_a] = centered(Per_a);
[Xs_Eur_a,m_Eur_a,n_Eur_a] = centered(Eur_a);
[Xs_UK_a,m_UK_a,n_UK_a] = centered(UK_a);
[Xs_Fra_a,m_Fra_a,n_Fra_a] = centered(Fra_a);
[Xs_Ger_a,m_Ger_a,n_Ger_a] = centered(Ger_a);
[Xs_Esp_a,m_Esp_a,n_Esp_a] = centered(Esp_a);
[Xs_Ita_a,m_Ita_a,n_Ita_a] = centered(Ita_a);
[Xs_Ned_a,m_Ned_a,n_Ned_a] = centered(Ned_a);
[Xs_Swe_a,m_Swe_a,n_Swe_a] = centered(Swe_a);
[Xs_Swi_a,m_Swi_a,n_Swi_a] = centered(Swi_a);
[Xs_Rus_a,m_Rus_a,n_Rus_a] = centered(Rus_a);
[Xs_Jpn_a,m_Jpn_a,n_Jpn_a] = centered(Jpn_a);
[Xs_HK_a,m_HK_a,n_HK_a] = centered(HK_a);
[Xs_Chn_a,m_Chn_a,n_Chn_a] = centered(Chn_a);
[Xs_Aus_a,m_Aus_a,n_Aus_a] = centered(Aus_a);
[Xs_Kor_a,m_Kor_a,n_Kor_a] = centered(Kor_a);
[Xs_Ind_a,m_Ind_a,n_Ind_a] = centered(Ind_a);
[Xs_Tai_a,m_Tai_a,n_Tai_a] = centered(Tai_a);
[Xs_Indo_a,m_Indo_a,n_Indo_a] = centered(Indo_a);
[Xs_Mal_a,m_Mal_a,n_Mal_a] = centered(Mal_a);
[Xs_Sin_a,m_Sin_a,n_Sin_a] = centered(Sin_a);


Xs_US_b = Xs_US_b';
Xs_Can_b = Xs_Can_b';
Xs_Mex_b = Xs_Mex_b';
Xs_Bra_b = Xs_Bra_b';
Xs_Chi_b = Xs_Chi_b';
Xs_Col_b = Xs_Col_b';
Xs_Arg_b = Xs_Arg_b';
Xs_Per_b = Xs_Per_b';
Xs_Eur_b = Xs_Eur_b';
Xs_UK_b = Xs_UK_b';
Xs_Fra_b = Xs_Fra_b';
Xs_Ger_b = Xs_Ger_b';
Xs_Esp_b = Xs_Esp_b';
Xs_Ita_b = Xs_Ita_b';
Xs_Ned_b = Xs_Ned_b';
Xs_Swe_b = Xs_Swe_b';
Xs_Swi_b = Xs_Swi_b';
Xs_Rus_b = Xs_Rus_b';
Xs_Jpn_b = Xs_Jpn_b';
Xs_HK_b = Xs_HK_b';
Xs_Chn_b = Xs_Chn_b';
Xs_Aus_b = Xs_Aus_b';
Xs_Kor_b = Xs_Kor_b';
Xs_Ind_b = Xs_Ind_b';
Xs_Tai_b = Xs_Tai_b';
Xs_Indo_b = Xs_Indo_b';
Xs_Mal_b = Xs_Mal_b';
Xs_Sin_b = Xs_Sin_b';

Xs_US_d = Xs_US_d';
Xs_Can_d = Xs_Can_d';
Xs_Mex_d = Xs_Mex_d';
Xs_Bra_d = Xs_Bra_d';
Xs_Chi_d = Xs_Chi_d';
Xs_Col_d = Xs_Col_d';
Xs_Arg_d = Xs_Arg_d';
Xs_Per_d = Xs_Per_d';
Xs_Eur_d = Xs_Eur_d';
Xs_UK_d = Xs_UK_d';
Xs_Fra_d = Xs_Fra_d';
Xs_Ger_d = Xs_Ger_d';
Xs_Esp_d = Xs_Esp_d';
Xs_Ita_d = Xs_Ita_d';
Xs_Ned_d = Xs_Ned_d';
Xs_Swe_d = Xs_Swe_d';
Xs_Swi_d = Xs_Swi_d';
Xs_Rus_d = Xs_Rus_d';
Xs_Jpn_d = Xs_Jpn_d';
Xs_HK_d = Xs_HK_d';
Xs_Chn_d = Xs_Chn_d';
Xs_Aus_d = Xs_Aus_d';
Xs_Kor_d = Xs_Kor_d';
Xs_Ind_d = Xs_Ind_d';
Xs_Tai_d = Xs_Tai_d';
Xs_Indo_d = Xs_Indo_d';
Xs_Mal_d = Xs_Mal_d';
Xs_Sin_d = Xs_Sin_d';

Xs_US_a = Xs_US_a';
Xs_Can_a = Xs_Can_a';
Xs_Mex_a = Xs_Mex_a';
Xs_Bra_a = Xs_Bra_a';
Xs_Chi_a = Xs_Chi_a';
Xs_Col_a = Xs_Col_a';
Xs_Arg_a = Xs_Arg_a';
Xs_Per_a = Xs_Per_a';
Xs_Eur_a = Xs_Eur_a';
Xs_UK_a = Xs_UK_a';
Xs_Fra_a = Xs_Fra_a';
Xs_Ger_a = Xs_Ger_a';
Xs_Esp_a = Xs_Esp_a';
Xs_Ita_a = Xs_Ita_a';
Xs_Ned_a = Xs_Ned_a';
Xs_Swe_a = Xs_Swe_a';
Xs_Swi_a = Xs_Swi_a';
Xs_Rus_a = Xs_Rus_a';
Xs_Jpn_a = Xs_Jpn_a';
Xs_HK_a = Xs_HK_a';
Xs_Chn_a = Xs_Chn_a';
Xs_Aus_a = Xs_Aus_a';
Xs_Kor_a = Xs_Kor_a';
Xs_Ind_a = Xs_Ind_a';
Xs_Tai_a = Xs_Tai_a';
Xs_Indo_a = Xs_Indo_a';
Xs_Mal_a = Xs_Mal_a';
Xs_Sin_a = Xs_Sin_a';


[totalReturnUSb,averageReturnUSb,varianceReturnUSb] = portfolioReturn(Xs_US_b,n_US_b,t,m_US_b-1);
[totalReturnCanb,averageReturnCanb,varianceReturnCanb] = portfolioReturn(Xs_Can_b,n_Can_b,t,m_Can_b-1);
[totalReturnMexb,averageReturnMexb,varianceReturnMexb] = portfolioReturn(Xs_Mex_b,n_Mex_b,t,m_Mex_b-1);
[totalReturnBrab,averageReturnBrab,varianceReturnBrab] = portfolioReturn(Xs_Bra_b,n_Bra_b,t,m_Bra_b-1);
[totalReturnChib,averageReturnChib,varianceReturnChib] = portfolioReturn(Xs_Chi_b,n_Chi_b,t,m_Chi_b-1);
[totalReturnColb,averageReturnColb,varianceReturnColb] = portfolioReturn(Xs_Col_b,n_Col_b,t,m_Col_b-1);
[totalReturnArgb,averageReturnArgb,varianceReturnArgb] = portfolioReturn(Xs_Arg_b,n_Arg_b,t,m_Arg_b-1);
[totalReturnPerb,averageReturnPerb,varianceReturnPerb] = portfolioReturn(Xs_Per_b,n_Per_b,t,m_Per_b-1);
[totalReturnEurb,averageReturnEurb,varianceReturnEurb] = portfolioReturn(Xs_Eur_b,n_Eur_b,t,m_Eur_b-1);
[totalReturnUKb,averageReturnUKb,varianceReturnUKb] = portfolioReturn(Xs_UK_b,n_UK_b,t,m_UK_b-1);
[totalReturnFrab,averageReturnFrab,varianceReturnFrab] = portfolioReturn(Xs_Fra_b,n_Fra_b,t,m_Fra_b-1);
[totalReturnGerb,averageReturnGerb,varianceReturnGerb] = portfolioReturn(Xs_Ger_b,n_Ger_b,t,m_Ger_b-1);
[totalReturnEspb,averageReturnEspb,varianceReturnEspb] = portfolioReturn(Xs_Esp_b,n_Esp_b,t,m_Esp_b-1);
[totalReturnItab,averageReturnItab,varianceReturnItab] = portfolioReturn(Xs_Ita_b,n_Ita_b,t,m_Ita_b-1);
[totalReturnNedb,averageReturnNedb,varianceReturnNedb] = portfolioReturn(Xs_Ned_b,n_Ned_b,t,m_Ned_b-1);
[totalReturnSweb,averageReturnSweb,varianceReturnSweb] = portfolioReturn(Xs_Swe_b,n_Swe_b,t,m_Swe_b-1);
[totalReturnSwib,averageReturnSwib,varianceReturnSwib] = portfolioReturn(Xs_Swi_b,n_Swi_b,t,m_Swi_b-1);
[totalReturnRusb,averageReturnRusb,varianceReturnRusb] = portfolioReturn(Xs_Rus_b,n_Rus_b,t,m_Rus_b-1);
[totalReturnJpnb,averageReturnJpnb,varianceReturnJpnb] = portfolioReturn(Xs_Jpn_b,n_Jpn_b,t,m_Jpn_b-1);
[totalReturnHKb,averageReturnHKb,varianceReturnHKb] = portfolioReturn(Xs_HK_b,n_HK_b,t,m_HK_b-1);
[totalReturnChnb,averageReturnChnb,varianceReturnChnb] = portfolioReturn(Xs_Chn_b,n_Chn_b,t,m_Chn_b-1);
[totalReturnAusb,averageReturnAusb,varianceReturnAusb] = portfolioReturn(Xs_Aus_b,n_Aus_b,t,m_Aus_b-1);
[totalReturnKorb,averageReturnKorb,varianceReturnKorb] = portfolioReturn(Xs_Kor_b,n_Kor_b,t,m_Kor_b-1);
[totalReturnIndb,averageReturnIndb,varianceReturnIndb] = portfolioReturn(Xs_Ind_b,n_Ind_b,t,m_Ind_b-1);
[totalReturnTaib,averageReturnTaib,varianceReturnTaib] = portfolioReturn(Xs_Tai_b,n_Tai_b,t,m_Tai_b-1);
[totalReturnIndob,averageReturnIndob,varianceReturnIndob] = portfolioReturn(Xs_Indo_b,n_Indo_b,t,m_Indo_b-1);
[totalReturnMalb,averageReturnMalb,varianceReturnMalb] = portfolioReturn(Xs_Mal_b,n_Mal_b,t,m_Mal_b-1);
[totalReturnSinb,averageReturnSinb,varianceReturnSinb] = portfolioReturn(Xs_Sin_b,n_Sin_b,t,m_Sin_b-1);

[totalReturnUSd,averageReturnUSd,varianceReturnUSd] = portfolioReturn(Xs_US_d,n_US_d,t,m_US_d-1);
[totalReturnCand,averageReturnCand,varianceReturnCand] = portfolioReturn(Xs_Can_d,n_Can_d,t,m_Can_d-1);
[totalReturnMexd,averageReturnMexd,varianceReturnMexd] = portfolioReturn(Xs_Mex_d,n_Mex_d,t,m_Mex_d-1);
[totalReturnBrad,averageReturnBrad,varianceReturnBrad] = portfolioReturn(Xs_Bra_d,n_Bra_d,t,m_Bra_d-1);
[totalReturnChid,averageReturnChid,varianceReturnChid] = portfolioReturn(Xs_Chi_d,n_Chi_d,t,m_Chi_d-1);
[totalReturnCold,averageReturnCold,varianceReturnCold] = portfolioReturn(Xs_Col_d,n_Col_d,t,m_Col_d-1);
[totalReturnArgd,averageReturnArgd,varianceReturnArgd] = portfolioReturn(Xs_Arg_d,n_Arg_d,t,m_Arg_d-1);
[totalReturnPerd,averageReturnPerd,varianceReturnPerd] = portfolioReturn(Xs_Per_d,n_Per_d,t,m_Per_d-1);
[totalReturnEurd,averageReturnEurd,varianceReturnEurd] = portfolioReturn(Xs_Eur_d,n_Eur_d,t,m_Eur_d-1);
[totalReturnUKd,averageReturnUKd,varianceReturnUKd] = portfolioReturn(Xs_UK_d,n_UK_d,t,m_UK_d-1);
[totalReturnFrad,averageReturnFrad,varianceReturnFrad] = portfolioReturn(Xs_Fra_d,n_Fra_d,t,m_Fra_d-1);
[totalReturnGerd,averageReturnGerd,varianceReturnGerd] = portfolioReturn(Xs_Ger_d,n_Ger_d,t,m_Ger_d-1);
[totalReturnEspd,averageReturnEspd,varianceReturnEspd] = portfolioReturn(Xs_Esp_d,n_Esp_d,t,m_Esp_d-1);
[totalReturnItad,averageReturnItad,varianceReturnItad] = portfolioReturn(Xs_Ita_d,n_Ita_d,t,m_Ita_d-1);
[totalReturnNedd,averageReturnNedd,varianceReturnNedd] = portfolioReturn(Xs_Ned_d,n_Ned_d,t,m_Ned_d-1);
[totalReturnSwed,averageReturnSwed,varianceReturnSwed] = portfolioReturn(Xs_Swe_d,n_Swe_d,t,m_Swe_d-1);
[totalReturnSwid,averageReturnSwid,varianceReturnSwid] = portfolioReturn(Xs_Swi_d,n_Swi_d,t,m_Swi_d-1);
[totalReturnRusd,averageReturnRusd,varianceReturnRusd] = portfolioReturn(Xs_Rus_d,n_Rus_d,t,m_Rus_d-1);
[totalReturnJpnd,averageReturnJpnd,varianceReturnJpnd] = portfolioReturn(Xs_Jpn_d,n_Jpn_d,t,m_Jpn_d-1);
[totalReturnHKd,averageReturnHKd,varianceReturnHKd] = portfolioReturn(Xs_HK_d,n_HK_d,t,m_HK_d-1);
[totalReturnChnd,averageReturnChnd,varianceReturnChnd] = portfolioReturn(Xs_Chn_d,n_Chn_d,t,m_Chn_d-1);
[totalReturnAusd,averageReturnAusd,varianceReturnAusd] = portfolioReturn(Xs_Aus_d,n_Aus_d,t,m_Aus_d-1);
[totalReturnKord,averageReturnKord,varianceReturnKord] = portfolioReturn(Xs_Kor_d,n_Kor_d,t,m_Kor_d-1);
[totalReturnIndd,averageReturnIndd,varianceReturnIndd] = portfolioReturn(Xs_Ind_d,n_Ind_d,t,m_Ind_d-1);
[totalReturnTaid,averageReturnTaid,varianceReturnTaid] = portfolioReturn(Xs_Tai_d,n_Tai_d,t,m_Tai_d-1);
[totalReturnIndod,averageReturnIndod,varianceReturnIndod] = portfolioReturn(Xs_Indo_d,n_Indo_d,t,m_Indo_d-1);
[totalReturnMald,averageReturnMald,varianceReturnMald] = portfolioReturn(Xs_Mal_d,n_Mal_d,t,m_Mal_d-1);
[totalReturnSind,averageReturnSind,varianceReturnSind] = portfolioReturn(Xs_Sin_d,n_Sin_d,t,m_Sin_d-1);

[totalReturnUSa,averageReturnUSa,varianceReturnUSa] = portfolioReturn(Xs_US_a,n_US_a,t,m_US_a-1);
[totalReturnCana,averageReturnCana,varianceReturnCana] = portfolioReturn(Xs_Can_a,n_Can_a,t,m_Can_a-1);
[totalReturnMexa,averageReturnMexa,varianceReturnMexa] = portfolioReturn(Xs_Mex_a,n_Mex_a,t,m_Mex_a-1);
[totalReturnBraa,averageReturnBraa,varianceReturnBraa] = portfolioReturn(Xs_Bra_a,n_Bra_a,t,m_Bra_a-1);
[totalReturnChia,averageReturnChia,varianceReturnChia] = portfolioReturn(Xs_Chi_a,n_Chi_a,t,m_Chi_a-1);
[totalReturnCola,averageReturnCola,varianceReturnCola] = portfolioReturn(Xs_Col_a,n_Col_a,t,m_Col_a-1);
[totalReturnArga,averageReturnArga,varianceReturnArga] = portfolioReturn(Xs_Arg_a,n_Arg_a,t,m_Arg_a-1);
[totalReturnPera,averageReturnPera,varianceReturnPera] = portfolioReturn(Xs_Per_a,n_Per_a,t,m_Per_a-1);
[totalReturnEura,averageReturnEura,varianceReturnEura] = portfolioReturn(Xs_Eur_a,n_Eur_a,t,m_Eur_a-1);
[totalReturnUKa,averageReturnUKa,varianceReturnUKa] = portfolioReturn(Xs_UK_a,n_UK_a,t,m_UK_a-1);
[totalReturnFraa,averageReturnFraa,varianceReturnFraa] = portfolioReturn(Xs_Fra_a,n_Fra_a,t,m_Fra_a-1);
[totalReturnGera,averageReturnGera,varianceReturnGera] = portfolioReturn(Xs_Ger_a,n_Ger_a,t,m_Ger_a-1);
[totalReturnEspa,averageReturnEspa,varianceReturnEspa] = portfolioReturn(Xs_Esp_a,n_Esp_a,t,m_Esp_a-1);
[totalReturnItaa,averageReturnItaa,varianceReturnItaa] = portfolioReturn(Xs_Ita_a,n_Ita_a,t,m_Ita_a-1);
[totalReturnNeda,averageReturnNeda,varianceReturnNeda] = portfolioReturn(Xs_Ned_a,n_Ned_a,t,m_Ned_a-1);
[totalReturnSwea,averageReturnSwea,varianceReturnSwea] = portfolioReturn(Xs_Swe_a,n_Swe_a,t,m_Swe_a-1);
[totalReturnSwia,averageReturnSwia,varianceReturnSwia] = portfolioReturn(Xs_Swi_a,n_Swi_a,t,m_Swi_a-1);
[totalReturnRusa,averageReturnRusa,varianceReturnRusa] = portfolioReturn(Xs_Rus_a,n_Rus_a,t,m_Rus_a-1);
[totalReturnJpna,averageReturnJpna,varianceReturnJpna] = portfolioReturn(Xs_Jpn_a,n_Jpn_a,t,m_Jpn_a-1);
[totalReturnHKa,averageReturnHKa,varianceReturnHKa] = portfolioReturn(Xs_HK_a,n_HK_a,t,m_HK_a-1);
[totalReturnChna,averageReturnChna,varianceReturnChna] = portfolioReturn(Xs_Chn_a,n_Chn_a,t,m_Chn_a-1);
[totalReturnAusa,averageReturnAusa,varianceReturnAusa] = portfolioReturn(Xs_Aus_a,n_Aus_a,t,m_Aus_a-1);
[totalReturnKora,averageReturnKora,varianceReturnKora] = portfolioReturn(Xs_Kor_a,n_Kor_a,t,m_Kor_a-1);
[totalReturnInda,averageReturnInda,varianceReturnInda] = portfolioReturn(Xs_Ind_a,n_Ind_a,t,m_Ind_a-1);
[totalReturnTaia,averageReturnTaia,varianceReturnTaia] = portfolioReturn(Xs_Tai_a,n_Tai_a,t,m_Tai_a-1);
[totalReturnIndoa,averageReturnIndoa,varianceReturnIndoa] = portfolioReturn(Xs_Indo_a,n_Indo_a,t,m_Indo_a-1);
[totalReturnMala,averageReturnMala,varianceReturnMala] = portfolioReturn(Xs_Mal_a,n_Mal_a,t,m_Mal_a-1);
[totalReturnSina,averageReturnSina,varianceReturnSina] = portfolioReturn(Xs_Sin_a,n_Sin_a,t,m_Sin_a-1);

totalReturnBefore = [totalReturnUSb,totalReturnCanb,totalReturnMexb,totalReturnBrab,totalReturnChib,totalReturnColb,...
    totalReturnArgb,totalReturnPerb,...
    totalReturnEurb,totalReturnUKb,totalReturnFrab,totalReturnGerb,totalReturnEspb,totalReturnItab,totalReturnNedb...
    totalReturnSweb,totalReturnSwib,totalReturnRusb,totalReturnJpnb,totalReturnHKb,totalReturnChnb,totalReturnAusb...
    totalReturnKorb,totalReturnIndb,totalReturnTaib,totalReturnIndob,totalReturnMalb,totalReturnSinb];

totalReturnDuring = [totalReturnUSd,totalReturnCand,totalReturnMexd,totalReturnBrad,totalReturnChid,totalReturnCold,...
    totalReturnArgd,totalReturnPerd,...
    totalReturnEurd,totalReturnUKd,totalReturnFrad,totalReturnGerd,totalReturnEspd,totalReturnItad,totalReturnNedd...
    totalReturnSwed,totalReturnSwid,totalReturnRusd,totalReturnJpnd,totalReturnHKd,totalReturnChnd,totalReturnAusd...
    totalReturnKord,totalReturnIndd,totalReturnTaid,totalReturnIndod,totalReturnMald,totalReturnSind];

totalReturnAfter = [totalReturnUSa,totalReturnCana,totalReturnMexa,totalReturnBraa,totalReturnChia,totalReturnCola,...
    totalReturnArga,totalReturnPera,...
    totalReturnEura,totalReturnUKa,totalReturnFraa,totalReturnGera,totalReturnEspa,totalReturnItaa,totalReturnNeda...
    totalReturnSwea,totalReturnSwia,totalReturnRusa,totalReturnJpna,totalReturnHKa,totalReturnChna,totalReturnAusa...
    totalReturnKora,totalReturnInda,totalReturnTaia,totalReturnIndoa,totalReturnMala,totalReturnSina];

figure(1);
plot(totalReturnBefore,'-o');
hold on;
plot(totalReturnDuring,'-o');
hold on;
plot(totalReturnAfter,'-o');
xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28]);
xticklabels({'US','Can','Mex','Bra','Chi','Col','Arg','Per','Eur','UK','Fra'...
    'Ger','Esp','Ita','Ned','Swe','Swi','Rus','Jpn','HK','Chn','Aus'...
    'Kor','Ind','Tai','Indo','Mal','Sin'});
title('Total Return');
xlabel('Countries');
ylabel('Total Return');
set(gcf,'color','w');
legend('Before','During','After');
grid on;

averageReturnBefore = [averageReturnUSb,averageReturnCanb,averageReturnMexb,averageReturnBrab,averageReturnChib,averageReturnColb,...
    averageReturnArgb,averageReturnPerb,...
    averageReturnEurb,averageReturnUKb,averageReturnFrab,averageReturnGerb,averageReturnEspb,averageReturnItab,averageReturnNedb...
    averageReturnSweb,averageReturnSwib,averageReturnRusb,averageReturnJpnb,averageReturnHKb,averageReturnChnb,averageReturnAusb...
    averageReturnKorb,averageReturnIndb,averageReturnTaib,averageReturnIndob,averageReturnMalb,averageReturnSinb];

averageReturnDuring = [averageReturnUSd,averageReturnCand,averageReturnMexd,averageReturnBrad,averageReturnChid,averageReturnCold,...
    averageReturnArgd,averageReturnPerd,...
    averageReturnEurd,averageReturnUKd,averageReturnFrad,averageReturnGerd,averageReturnEspd,averageReturnItad,averageReturnNedd...
    averageReturnSwed,averageReturnSwid,averageReturnRusd,averageReturnJpnd,averageReturnHKd,averageReturnChnd,averageReturnAusd...
    averageReturnKord,averageReturnIndd,averageReturnTaid,averageReturnIndod,averageReturnMald,averageReturnSind];

averageReturnAfter = [averageReturnUSa,averageReturnCana,averageReturnMexa,averageReturnBraa,averageReturnChia,averageReturnCola,...
    averageReturnArga,averageReturnPera,...
    averageReturnEura,averageReturnUKa,averageReturnFraa,averageReturnGera,averageReturnEspa,averageReturnItaa,averageReturnNeda...
    averageReturnSwea,averageReturnSwia,averageReturnRusa,averageReturnJpna,averageReturnHKa,averageReturnChna,averageReturnAusa...
    averageReturnKora,averageReturnInda,averageReturnTaia,averageReturnIndoa,averageReturnMala,averageReturnSina];

figure(2);
plot(averageReturnBefore,'-o');
hold on;
plot(averageReturnDuring,'-o');
hold on;
plot(averageReturnAfter,'-o');
xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28]);
xticklabels({'US','Can','Mex','Bra','Chi','Col','Arg','Per','Eur','UK','Fra'...
    'Ger','Esp','Ita','Ned','Swe','Swi','Rus','Jpn','HK','Chn','Aus'...
    'Kor','Ind','Tai','Indo','Mal','Sin'});
title('Average Return');
xlabel('Countries');
ylabel('Average Return');
set(gcf,'color','w');
legend('Before','During','After');
grid on;

varianceReturnBefore = [varianceReturnUSb,varianceReturnCanb,varianceReturnMexb,varianceReturnBrab,varianceReturnChib,varianceReturnColb,...
    varianceReturnArgb,varianceReturnPerb,...
    varianceReturnEurb,varianceReturnUKb,varianceReturnFrab,varianceReturnGerb,varianceReturnEspb,varianceReturnItab,varianceReturnNedb...
    varianceReturnSweb,varianceReturnSwib,varianceReturnRusb,varianceReturnJpnb,varianceReturnHKb,varianceReturnChnb,varianceReturnAusb...
    varianceReturnKorb,varianceReturnIndb,varianceReturnTaib,varianceReturnIndob,varianceReturnMalb,varianceReturnSinb];

varianceReturnDuring = [varianceReturnUSd,varianceReturnCand,varianceReturnMexd,varianceReturnBrad,varianceReturnChid,varianceReturnCold,...
    varianceReturnArgd,varianceReturnPerd,...
    varianceReturnEurd,varianceReturnUKd,varianceReturnFrad,varianceReturnGerd,varianceReturnEspd,varianceReturnItad,varianceReturnNedd...
    varianceReturnSwed,varianceReturnSwid,varianceReturnRusd,varianceReturnJpnd,varianceReturnHKd,varianceReturnChnd,varianceReturnAusd...
    varianceReturnKord,varianceReturnIndd,varianceReturnTaid,varianceReturnIndod,varianceReturnMald,varianceReturnSind];

varianceReturnAfter = [varianceReturnUSa,varianceReturnCana,varianceReturnMexa,varianceReturnBraa,varianceReturnChia,varianceReturnCola,...
    varianceReturnArga,varianceReturnPera,...
    varianceReturnEura,varianceReturnUKa,varianceReturnFraa,varianceReturnGera,varianceReturnEspa,varianceReturnItaa,varianceReturnNeda...
    varianceReturnSwea,varianceReturnSwia,varianceReturnRusa,varianceReturnJpna,varianceReturnHKa,varianceReturnChna,varianceReturnAusa...
    varianceReturnKora,varianceReturnInda,varianceReturnTaia,varianceReturnIndoa,varianceReturnMala,varianceReturnSina];

figure(3);
plot(varianceReturnBefore,'-o');
hold on;
plot(varianceReturnDuring,'-o');
hold on;
plot(varianceReturnAfter,'-o');
xticks([1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28]);
xticklabels({'US','Can','Mex','Bra','Chi','Col','Arg','Per','Eur','UK','Fra'...
    'Ger','Esp','Ita','Ned','Swe','Swi','Rus','Jpn','HK','Chn','Aus'...
    'Kor','Ind','Tai','Indo','Mal','Sin'});
title(['Variance of Daily Return (w = ',num2str(t),')']);
xlabel('Countries');
ylabel('Variance Return');
set(gcf,'color','w');
legend('Before Crisis','During Crisis','After Crisis');
grid on;