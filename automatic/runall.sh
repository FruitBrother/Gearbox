for alg in "AFQ10" "PQ" "HRCC" "DropTail" "AFQ100" "AFQ1000"
do
  cmd="./$1 $2 $3 Topology-incast-singlenode.tcl $alg"
  echo $cmd
  eval $cmd
done
