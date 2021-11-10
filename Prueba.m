clear
clc

Date1=input('enter first date in format dd-mm-yyyy: ','s');
Date2=input('enter second date in format dd-mm-yyyy: ','s');
Day1=str2num(Date1(1:2));
Month1=str2num(Date1(4:5));
Year1=str2num(Date1(7:10));
Day2=str2num(Date2(1:2));
Month2=str2num(Date2(4:5));
Year2=str2num(Date2(7:10));
Stock1_Date1=(Day1+Month1+Year1)*0.5;
Stock1_Date2=(Day2+Month2+Year2)*0.5;
Stock2_Date1=(Day1+Month1+Year1)*1;
Stock2_Date2=(Day2+Month2+Year2)*1;
Stock3_Date1=(Day1+Month1+Year1)*1.5;
Stock3_Date2=(Day2+Month2+Year2)*1.5;

Status_Date1=Stock1_Date1+Stock2_Date1+Stock3_Date1;
Status_Date2=Stock1_Date2+Stock2_Date2+Stock3_Date2;
Profit=Status_Date2-Status_Date1;
Annualized_Return=(((Status_Date2/Status_Date1)^(1/(Year2-Year1)))-1)*100;
fprintf('The profit between %s and %s is %d monetary units \n and the annualized return is %d monetary units', Date1, Date2, Profit,Annualized_Return)
