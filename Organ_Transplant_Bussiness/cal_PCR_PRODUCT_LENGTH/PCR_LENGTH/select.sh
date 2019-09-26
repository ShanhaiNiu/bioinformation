less *6|awk '$3==100&&$4>10&&$7<8&&$8>15'|sort -k2,2 -k10,10n|sed 's/ /\t/g'|less 
