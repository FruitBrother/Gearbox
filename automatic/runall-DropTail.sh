# "AFQ10" "HRCC" "DropTail" "AFQ100" "AFQ1000" 
for alg in "DropTail-100" "DropTail-200" "DropTail" "DropTail-500" "DropTail-1000" "DropTail-1500" "DropTail-2000"
do
  cmd="./$1 $2 $3 Topology-incast-singlenode.tcl $alg"
  echo $cmd
  eval $cmd
done
