integer main()
{

integer i;
i=1;
integer x;
x=Fork();
while(i<=30) do
      if(i%15==0)then
      	x=Exec("hello.xsm");
      else
      	if(i%2==0) then
      		x=Fork();	
      	endif;
      endif;
      i=i+1;
endwhile;
return 0;
}

