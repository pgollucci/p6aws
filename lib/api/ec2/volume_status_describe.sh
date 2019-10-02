######################################################################
#<
#
# Function:
#	p6_aws_ec2_volume_status_describe()
#
#>
######################################################################
p6_aws_ec2_volume_status_describe() {

    p6_run_read_cmd aws ec2 describe-volume-status "$@"
}