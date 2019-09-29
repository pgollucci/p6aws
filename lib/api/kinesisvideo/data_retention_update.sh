######################################################################
#<
#
# Function:
#      = p6_aws_kinesisvideo_data_retention_update(current_version, operation, data_retention_change_in_hours)
#
# Arg(s):
#    current_version - 
#    operation - 
#    data_retention_change_in_hours - 
#
#
#>
######################################################################
p6_aws_kinesisvideo_data_retention_update() {
    local current_version="$1"
    local operation="$2"
    local data_retention_change_in_hours="$3"
    shift 3

    p6_run_write_cmd aws kinesisvideo update-data-retention --current-version $current_version --operation $operation --data-retention-change-in-hours $data_retention_change_in_hours "$@"
}