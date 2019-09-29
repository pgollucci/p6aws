######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpc_classic_link_enable(vpc_id)
#
# Arg(s):
#    vpc_id - 
#
#
#>
######################################################################
p6_aws_ec2_vpc_classic_link_enable() {
    local vpc_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 enable-vpc-classic-link --vpc-id $vpc_id "$@"
}