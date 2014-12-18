function [ B ] = imge_parta( I )
%UNTÝTLED3 Summary of this function goes here
%   Detailed explanation goes here
L0=[0 0 0;0 0 0; 0 0 0];%0-24
L1=[0 255 0;0 0 0; 0 0 0];%25-49
L2=[0 255 0;0 0 0; 0 0 255];%50-74
L3=[255 255 0;0 0 0; 0 0 255];%75-99
L4=[255 255 0;0 0 0; 255 0 255];%100-124
L5=[255 255 255;0 0 0; 255 0 255];%125-149
L6=[255 255 255;0 0 255; 255 0 255];%150-174
L7=[255 255 255;0 0 255; 255 255 255];%175-199
L8=[255 255 255;255 0 255; 255 255 255];%200-224
L9=[255 255 255;255 255 255; 255 255 255];%225-255
%temp=[0 0 0;0 0 0;0 0 0];
[m,n]=size(I); %sadece 512-512 olarak deðil boyutlarý bilinmeyen resimlerde de kullanmak için
%A= zeros(3, 3, 'uint8');
A=[];
for i=1:m%satýr kontrollerinin yapýldýðý for

    for j=1:n%sütun kontrollerinin yapýldýðý for %I(i,j) pixel deðerini okuma...
       
        if (I(i,j)<=24)
              
                A=[A,L0];
             
            continue;
        end
         if((25<=I(i,j)) && (I(i,j)<=49))
               
                A=[A,L1];
                
                continue;
         end
          if((50<=I(i,j)) && (I(i,j)<=74))
              
                A=[A,L2];
              
                continue;
         end
         if((75<=I(i,j)) && (I(i,j)<=99))
              
                A=[A,L3];
               
                continue;
          end
        if((100<=I(i,j)) && (I(i,j)<=124))
             
                A=[A,L4];
               
                continue;
           end
         if((125<=I(i,j)) && (I(i,j)<=149))
               
                A=[A,L5];
              
               continue;
          end
          if((150<=I(i,j)) && (I(i,j)<=174))
              
                A=[A,L6];
              
               continue;
           end
           if((175<=I(i,j)) && (I(i,j)<=199))
             
                A=[A,L7];
              
               continue;
           end
           if((200<=I(i,j)) && (I(i,j)<=224))
             
                A=[A,L8];
             
               continue;
           end
            if((225<=I(i,j)) && (I(i,j)<=255))

                A=[A,L9];
               
                continue;
            end
    end
    if(i==1)
        B=A;
    else
        B=[B;A];
    end
        A=[];
end

end