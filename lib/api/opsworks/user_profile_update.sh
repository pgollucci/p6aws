######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_user_profile_update(iam_user_arn)
#
# Arg(s):
#    iam_user_arn - 
#
#
#>
######################################################################
p6_aws_opsworks_user_profile_update() {
    local iam_user_arn="$1"
    shift 1

    p6_run_write_cmd aws opsworks update-user-profile --iam-user-arn $iam_user_arn "$@"
}