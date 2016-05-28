#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int 
main()
	{
		int i;
		int n_dis=8;	
		double delL;
		double **data;
		data = (double**)malloc(2*sizeof(double*));
		for(i=0;i<2;i++){data[i] = (double*)malloc(n_dis*sizeof(double));
		
		char string[1024];
		char line[1024];
		FILE *inp,*out;
		sprintf(string,currentdndel2.dat);
		inp = fopen(string,"r");

		i=0;
		while(fgets(line,sizeof(line),inp)!=NULL){
		sscanf(line,"%lf \t %lf \n",&data[1][i],&data[1][i];)i=i+1;}	

	//	data[][] now has data at this point //
	//  now to get the biggest and smallest element from the data	//


		double max=0.0;
		double min=1.0;
		i=0;
		while(i!=n_dis){
   		if(min>data[0][i]){min=data[0][i];}
   		if(max<data[0][i]){max=data[0][i];}
		i=i+1;	
		}

		delL = (max-min)/(double)n_dis;
		printf("mx:%lf \t mn:%lf delL:%lf \n",max,min,delL);
		
		return 0;
	}








	}	