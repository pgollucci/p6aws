######################################################################
#<
#
# Function:
#      = p6_aws_ecr_lifecycle_policy_preview_start(repository_name)
#
# Arg(s):
#    repository_name - 
#
#
#>
######################################################################
p6_aws_ecr_lifecycle_policy_preview_start() {
    local repository_name="$1"
    shift 1

    p6_run_write_cmd aws ecr start-lifecycle-policy-preview --repository-name $repository_name "$@"
}