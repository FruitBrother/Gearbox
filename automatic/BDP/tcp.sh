if [ "$#" == 5 ]
then
		script=$1
		flownum=$2 
		load=$3
		topology=$4
		alg=$5
        pids=""
        names=""
        cmd="ns $script $flownum $load $topology $alg &> /dev/null &"
        name="tcp_$alg_flow_$flownum_$load_$topology.tr"
        names="$names $name"
        rm $name
        echo $cmd
        echo $name
        eval $cmd
        pids="$pids $!" 
        for pid in $pids; do
                echo "Waiting for $pid"
                wait $pid
        done
elif [ "$#" == 4 ]
then
		script=$1
		flownum=$2
		topology=$3
		alg=$4
        pids=""
        names=""
       for load in 0.95 0.9 0.8 0.7 0.6 0.5 0.4 0.3 0.2 0.1
#       for load in 0.95 0.9 0.8 
#       for load in 0.7 0.6 0.5 0.4 0.3 0.2 0.1
#       for load in 0.4 0.3 0.2 0.1
        do
	      	cmd="ns $script $flownum $load $topology $alg &> /dev/null &"
                name="tcp_$alg_flow_$flownum_$load_$topology.tr"
                names="$names $name"
                rm $name
                echo $cmd
                echo $name
                eval $cmd
                pids="$pids $!"
        done
        for pid in $pids; do
                echo "Waiting for $pid"
                wait $pid
        done
else
	echo "usage: [# of flows] [load] [topology] [alg]"
fi

