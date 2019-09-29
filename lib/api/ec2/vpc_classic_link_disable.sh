######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpc_classic_link_disable(vpc_id)
#
# Arg(s):
#    vpc_id - 
#
#
#>
######################################################################
p6_aws_ec2_vpc_classic_link_disable() {
    local vpc_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 disable-vpc-classic-link --vpc-id $vpc_id "$@"
}