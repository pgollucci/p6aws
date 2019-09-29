######################################################################
#<
#
# Function:
#      = p6_aws_resource_groups_tags_get(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_resource_groups_tags_get() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws resource-groups get-tags --arn $arn "$@"
}