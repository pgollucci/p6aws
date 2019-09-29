######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_policy_attachments_list(directory_arn, policy_reference)
#
# Arg(s):
#    directory_arn - 
#    policy_reference - 
#
#
#>
######################################################################
p6_aws_clouddirectory_policy_attachments_list() {
    local directory_arn="$1"
    local policy_reference="$2"
    shift 2

    p6_run_read_cmd aws clouddirectory list-policy-attachments --directory-arn $directory_arn --policy-reference $policy_reference "$@"
}