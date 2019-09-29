######################################################################
#<
#
# Function:
#      = p6_aws_ec2_iam_instance_profile_association_replace(iam_instance_profile, association_id)
#
# Arg(s):
#    iam_instance_profile - 
#    association_id - 
#
#
#>
######################################################################
p6_aws_ec2_iam_instance_profile_association_replace() {
    local iam_instance_profile="$1"
    local association_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 replace-iam-instance-profile-association --iam-instance-profile $iam_instance_profile --association-id $association_id "$@"
}