######################################################################
#<
#
# Function:
#	p6_aws_ec2_byoip_cidrs_describe()
#
#>
######################################################################
p6_aws_ec2_byoip_cidrs_describe() {

    p6_run_read_cmd aws ec2 describe-byoip-cidrs "$@"
}