for alg in "AFQ10" "PQ" "HRCC" "DropTail" "AFQ100" "AFQ1000"
do
  cmd="./$1 tcp-${alg}.tcl $2 $3 Topology-incast-singlenode.tcl"
  echo $cmd
  # eval $cmd
done
