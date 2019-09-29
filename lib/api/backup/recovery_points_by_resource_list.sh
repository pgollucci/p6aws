######################################################################
#<
#
# Function:
#      = p6_aws_backup_recovery_points_by_resource_list(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_backup_recovery_points_by_resource_list() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws backup list-recovery-points-by-resource --resource-arn $resource_arn "$@"
}