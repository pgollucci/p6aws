######################################################################
#<
#
# Function:
#      = p6_aws_ecr_lifecycle_policy_preview_get(repository_name)
#
# Arg(s):
#    repository_name - 
#
#
#>
######################################################################
p6_aws_ecr_lifecycle_policy_preview_get() {
    local repository_name="$1"
    shift 1

    p6_run_read_cmd aws ecr get-lifecycle-policy-preview --repository-name $repository_name "$@"
}