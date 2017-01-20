dir="${PWD##*/}"
old=l50
mv U0_mu0_L10_"$old"_dr1 U0_mu0_L10_"$dir"_dr1
sed -i*.bak "s/$old/$dir/g" U0_mu0_L10_"$dir"_dr1
rm *.bak
cat U0_mu0_L10_"$dir"_dr1
new=${dir:1}
old1=35
read VAR
if [[ $VAR -eq 0 ]]
	then
	sed -i*.bak "s/$old1/$new/g" loc_compress_mod.f90 
	rm *.bak
	cat loc_compress_mod.f90	
	read VAR2
	if [[ $VAR2 -eq 0 ]]
		then 
		sed -i*.bak "s/41/81/g" check.sh
		rm *.bak
		sed -i*.bak "s/l4/$dir/g" check.sh
		rm *.bak
		cat check.sh	
		read VAR3
			if [[ $VAR3 -eq 0 ]]	
				then 
				sed -i*.bak "s/40/80/g" new_input_files.plx
				rm *.bak
				sed -i*.bak "s/l4/$dir/g" new_input_files.plx 
				rm *.bak
				cat new_input_files.plx	
				read VAR5	
					if [[ $VAR5 -eq 0 ]]	
						then		
						sed -i*.bak "s/41/81/g" she.sh
						rm *.bak
						sed -i*.bak "s/l4/$dir/g" she.sh
						rm *.bak
						cat she.sh
						read VAR6
						if [[ $VAR6 -eq 0 ]]
							then
							sh compile.sh
							rm *.mod	
							perl new_input_files.plx
							sh she.sh
							sh check.sh
							else
							exit 1
						fi	
						else
						exit 1
					fi	
					else
					exit 1
			fi
			else
			exit 1
	fi
	else 
	exit 1 
fi
						
