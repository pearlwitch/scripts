### RENOMEAR CADEIAS 

awk 'BEGIN{OFS=""}
     /^ATOM|^HETATM/ {
       resi = substr($0,23,4)+0;
       ch = (resi<=349) ? "A" : "B";
       print substr($0,1,21), ch, substr($0,23);
       next
     }
     {print}
' initial.pdb > initial_AB.pdb

