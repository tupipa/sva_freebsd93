
if [ -z "$1" ];then
 kernel_name=svaKernel_pub_hello_track2
else
 kernel_name=sva$1
fi

export MAKEOBJDIRPREFIX=/home/lelema/obj

SRC_ROOT=/home/lelema/sva/SVA

cmd1="make buildkernel INSTKERNNAME=$kernel_name __MAKE_CONF=$SRC_ROOT/make.conf $2"
cmd2="export MAKEOBJDIRPREFIX=/home/lelema/obj && make installkernel INSTKERNNAME=$kernel_name __MAKE_CONF=$SRC_ROOT/make.conf $2"
echo "$cmd1 && $cmd2"
#eval $cmd1 && sudo $cmd2 
$cmd1 && \
sudo bash -c "$cmd2" && \
sudo bash buildlog.sh $kernel_name
