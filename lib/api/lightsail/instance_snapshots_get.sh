######################################################################
#<
#
# Function:
#	p6_aws_lightsail_instance_snapshots_get()
#
#>
######################################################################
p6_aws_lightsail_instance_snapshots_get() {

    p6_run_read_cmd aws lightsail get-instance-snapshots "$@"
}