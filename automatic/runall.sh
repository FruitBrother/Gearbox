script=$1
flownum=$2
load=$3
topo=$4
for alg in "DropTail" "AFQ10UlimPL" "AFQ10PL" "HRCCPL" "AFQ100PL" "AFQ1000PL"
do
  cmd="./tcp.sh $script $flownum $load $topo $alg"
  echo $cmd
  eval $cmd
done
