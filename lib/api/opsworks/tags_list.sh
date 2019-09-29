######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_tags_list(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_opsworks_tags_list() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws opsworks list-tags --resource-arn $resource_arn "$@"
}