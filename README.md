# Gearbox

manual
./tcp-HRCC.sh 10 0.5 Topology-incast-singlenode.tcl
./tcp-DropTail.sh 100 Topology-incast-singlenode.tcl

automatic 
step: ./tcp.sh tcp-general.tcl 10 0.5 Topology-incast-singlenode-unify.tcl AFQ10PL
      ./tcp.sh tcp-general-outinclude.tcl 10 0.5 Topology-incast-singlenode-unify.tcl AFQ10PL
./runall.sh tcp-general.tcl 10 0.5 Topology-incast-singlenode-unify.tcl
./runall.sh tcp-general.tcl 10 Topology-incast-singlenode-unify.tcl

automatic/flowBenchmark
step: ./tcp.sh tcp-general.tcl Topology-incast-singlenode-fix.tcl CDF_6.tcl AFQ10PL
./runall.sh tcp-general.tcl Topology-incast-singlenode-fix.tcl

automatic/fatTree
step:
    pass

jupyter notebook --no-browser --port=8811
ssh -N -L localhost:8811:localhost:8811 USER@XXX.XXX.XXX.XXX
ssh -i /Users/lining/Downloads/pg_ga_key XXX.XXX.XXX.XXX -fNL 16887:XXX.XXX.XXX.XXX:8888
du -h --max-depth=1
sudo lsof -i -P -n | grep LISTEN
rename s'/_fid//' ./*
