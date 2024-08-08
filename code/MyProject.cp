#line 1 "C:/Users/zhra5/OneDrive - Benha University (Faculty Of engineering)/Desktop/MyProject.c"








signed char j ,i, k ,number ,number2 , number3 ,number4 , bil, bil2, bil3,bil4;

void main() {
adcon1=7;
portc.b4=0; portc.b5=0; portc.b7=0;
trisb= 0;
trisc=0;
trisd=0;
trise=0;
trisa.b0=0;
portA.b0=0;
portc.b4=0;
portc.b5=0;
porte.b0=0;
trisa.b4=1;
for(;;){
j=3;
k=3;
 number =21;
 number2 =18;
 number3 =35;
 number4 =32;
 bil=21;
 bil2=18;
 bil3=35;
 bil4=32;
 while(number3!=0){
if(portA.b4==1){
  portc.b0 =0;
  porte.b0 =0;
  portc.b1 =0;
  porte.b1 =0;
  portc.b2 =0;
  porte.b2 =0;
 if(number>=0){
  portc.b0 =1;
 portb=number;
 number--;
 bil--;
 if(bil==15)
 number=number-6;
 }
 else if(number4>0 ){
  portc.b0 =0;
  portc.b2 =1;
 portb=number4;
 number4--;
 bil4--;
 if(bil4==31) number4-=6;
 if(bil4==21) number4-=6;

 }
 else if(k>=0){
  portc.b2 =0;
  portc.b1 =1;
 portb=k;
 k--;
 }
 if(number2>0){
  porte.b2 =1;
 portd=number2;
 number2--;
 bil2--;
 if(bil2==15)
 number2=number2-6;
 }
 else if(j>=0){
  porte.b2 =0;
  porte.b1 =1;
 portd=j;
 j--;
 }
 else if(number3>=0){
  porte.b1 =0;
  porte.b0 =1;
 portd=number3;
 number3--;
 bil3--;
 if(bil3==21) number3-=6;
 if(bil3==31) number3-=6;
 }
 delay_ms(1000);
 }
else if(portA.b4==0){
portd=0;
portb=0;

 portc.b0 =0;
 porte.b0 =0;
 portc.b1 =0;
 porte.b1 =0;
 portc.b2 =0;
 porte.b2 =0;

if(porta.b3==0){
while(portA.b4==0){

 if(portA.b4==0 && portA.b3==0 &&  porte.b2 ==0 ){
  portc.b1 =1;
  porte.b0 =1;
  portc.b0 =0;
  porte.b1 =0;
  portc.b2 =0;
  porte.b2 =0;
 for(i=3;i>=0;i--){
 portb=i;
 portd=i;
 delay_ms(1000);
 if(portA.b4==1) break;
 }
  portc.b1 =0;
  porte.b0 =0;
  portc.b0 =1;
  porte.b1 =0;
  portc.b2 =0;
  porte.b2 =1;
 }

 else if(portA.b4==0 && portA.b3==0 &&  porte.b2 ==1 ){
  portc.b1 =0;
  porte.b0 =0;
  portc.b0 =1;
  porte.b1 =1;
  portc.b2 =0;
  porte.b2 =0;
 for(i=3;i>=0;i--){
 portb=i;
 portd=i;
 delay_ms(1000);
 if(portA.b4==1) break;
 }
  portc.b1 =0;
  porte.b0 =1;
  portc.b0 =0;
  porte.b1 =0;
  portc.b2 =1;
  porte.b2 =0;
 }

 }

}

}
}
portb=0;
portd=0;
delay_ms(1000);

}
 }
