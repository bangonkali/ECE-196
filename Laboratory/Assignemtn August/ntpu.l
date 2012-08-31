* Mao ni akoan gi try ug sumpay2 na code sa number 2. Ang level 1 lang na mosfet 
* lang sa ang gitestingan. 
* 
* given ta atong code (which is below), ug mga parameters na table. Pero katong 
* code, kai naa toi kulang na mga parameters some of them are listed here: 
* http://j.mp/Nz9pM8 pero mas daghan ang nakalista diari: http://j.mp/QXteHx ga 
* start sa page 48 ani na document (52 including title). 
* 
* for example wala nakalista sa code ang parameter sa COX, pero ani na file 
* http://j.mp/NZjVfr nakalista ang solution unsaon pag derive sa cox given ang 
* uban parameters na naa sa code. Perhaps I think the same ang methods pag kuha 
* sa JS which is also a paramater that must be included on the code but was not, 
* pero mrag sa JS kailangan ka ug AS ug AD na parameter which is not given sa 
* code too. 
* 
* i have noted some probable solutions here. http://imgur.com/a/FN3bB And after 
* each line of code below naay [b/a, p#] na indication sa comment. a 
* means: http://j.mp/QXteHx and b means http://j.mp/Nz9pM8 . mga reference na 
* sila. para dali ra masabtan unsa pasabot ana na line of code. 
 
.LIB NTPU * Level 1 Enhancement NMOS
.MODEL NTPU_NMOS_LEVEL1 NMOS
+ CGBO=1.18E-10 * Gate-bulk overlap capacitance/channel width (Farads/meters) [b, p01]
+ CGDO=2.00E-10 * Gate-drain overlap capacitance/channel width (Farads/meters) [b, p01]
+ CGSO=2.00E-10 * Gate-source overlap capacitance/channel width (Farads/meters) [b, p01]
+ CJA=1.00E-03 * Zero-bias bulk junction capacitance (F/AREAeff) [a, p49]
+ CJSW=3.00E-10 * Zero-bias sidewall bulk junction capacitance (F/Pjeff) [a, p49]
+ GAMMA=6.24E-01 * Bulk threshold parameter (Volts1/2) [b, p01]
+ JS=3.22E-08 * Bulk p-n saturation/current area (Amps/meters2) [b, p01]
+ KP=1.50E-02 * Transconductance (Amps/Volts2) [b, p01]
+ LAMBDA=3.00E-02 * Channel-length modulation (Volts-1) [b, p01]
+ LD=3.00E-05 * Lateral diffusion into channel from source and drain diffusion (meters) [a, p52]
+ LEVEL=1.00E+00 * Schichman-Hodges Model (n/a) [a, p54]
+ MJ=5.00E-01 * Bulk junction grading coefficient (n/a) [a, p50]
+ MJSW=2.50E-01 * Bulk sidewall junction grading coefficient (n/a) [a, p50]
+ NSUB=1.40E+17 * Substate doping density (1/cm3) [a, p55]
+ PB=9.76E-01 * Bulk p-n potential (Volts) [b, p01]
+ PHI=8.30E-01 * Surface potential (Volts) [b, p01]
+ RSH=2.00E+00 * drain-source diffusion sheet resistance (Ohms/square) [b, p01]
+ TOX=1.00E-08 * Oxide thickness, calculated from COX, when COX is input (m) [a, p56]
+ TPG=1.00E+00 * Type of gate material, used for analytical model only. (m) [a, p55]
+ U0=4.50E+02 * low-field mobility (undetermined) [a, p71]
+ VTO=7.00E-01 * Zero-bias threshold voltage (Volts) [a, p51]
+ XJ=2.00E-04 * Metallurgical junction depth (m) [a, p55]
* Dapat naa pa daghan parameters diri like AD, AS, JS, COX etc...

.MODEL NTPU_NMOS_LEVEL2 PMOS
+ CGBO=1.18E-10 * Gate-bulk overlap capacitance/channel width (Farads/meters) [b, p01]
+ CGDO=2.00E-10 * Gate-drain overlap capacitance/channel width (Farads/meters) [b, p01]
+ CGSO=4.00E-10 * Gate-source overlap capacitance/channel width (Farads/meters) [b, p01]
+ CJ=8.00E-04 * Zero-bias bulk junction capacitance (F/AREAeff) [a, p49]
+ CJSW=3.00E-10 * Zero-bias sidewall bulk junction capacitance (F/Pjeff) [a, p49]
+ GAMMA=4.72E-01 * Bulk threshold parameter (Volts1/2) [b, p01]
+ JS=3.38E-08 * Bulk p-n saturation/current area (Amps/meters2) [b, p01]
+ KP=5.20E-02 * Transconductance (Amps/Volts2) [b, p01]
+ LAMBDA=9.00E-02 * Channel-length modulation (Volts-1) [b, p01]
+ LD=5.00E-05 * Lateral diffusion into channel from source and drain diffusion (meters) [a, p52]
+ LEVEL=1.00E+00 * Schichman-Hodges Model (n/a) [a, p54]
+ MJ=5.00E-01 * Bulk junction grading coefficient (n/a) [a, p50]
+ MJSW=2.50E-01 * Bulk sidewall junction grading coefficient (n/a) [a, p50]
+ NSUB=8.00E+16 * Substate doping density (1/cm3) [a, p55]
+ PB=9.60E-01 * Bulk p-n potential (Volts) [b, p01]
+ PHI=8.00E-01 * Surface potential (Volts) [b, p01]
+ RSH=2.50E+00 * drain-source diffusion sheet resistance (Ohms/square) [b, p01]
+ TOX=1.00E-08 * Oxide thickness, calculated from COX, when COX is input (m) [a, p56]
+ TPG=-1.00E+00 * Type of gate material, used for analytical model only. (m) [a, p55]
+ U0=1.50E+02 * low-field mobility (undetermined) [a, p71]
+ VTO=-9.00E-01 * Zero-bias threshold voltage (Volts) [a, p51]
+ XJ=2.00E-04 * Metallurgical junction depth (m) [a, p55]
* Dapat naa pa daghan parameters diri like AD, AS, JS, COX etc...

ENDL NTPU

* How to use the code. save this entire text as a .l file on your pc. Then call it using the 
* .lib "location.l" You can then use it in your own circuit. like atong PC ug NCH pero instead 
* of using PCH or NCH you use N1 or P1. Para ma call nimo sila. 
*  
*  Example code is shown below:
*  step1_nmos
*  
*  .option post probe
*  .lib 'C:\Users\Bangonkali\Desktop\churvaloo.l' NTPU
*  
*  Mn x x gnd gnd NTPU_NMOS_LEVEL1 l=9.6u w=0.3u
*  Vds x gnd 1.8
*  
*  .op
*  .dc Vds 0 0.8 0.001
*  .probe i1(Mn)
*  
*  .end
*  
* But in the end I doubt if a simulation is even ever needed for this problem. I think this 
* will be purely theoretical and may end up having no need for any simulation.
*
* Note: The problem i was thinking is trying to look in to all the other paramters that are 
* not listed from the code but are calcuable from the given paramaters. The solutions are 
* scattered around the internet and from the study files that were given to us. 
* 
* I am not sure if this is the correct way to solve this problem. if you have a better 
* solution, please advise. :)