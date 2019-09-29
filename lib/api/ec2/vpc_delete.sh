######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpc_delete(vpc_id)
#
# Arg(s):
#    vpc_id - 
#
#
#>
######################################################################
p6_aws_ec2_vpc_delete() {
    local vpc_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-vpc --vpc-id $vpc_id "$@"
}