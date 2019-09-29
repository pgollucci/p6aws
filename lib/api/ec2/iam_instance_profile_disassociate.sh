######################################################################
#<
#
# Function:
#      = p6_aws_ec2_iam_instance_profile_disassociate(association_id)
#
# Arg(s):
#    association_id - 
#
#
#>
######################################################################
p6_aws_ec2_iam_instance_profile_disassociate() {
    local association_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 disassociate-iam-instance-profile --association-id $association_id "$@"
}