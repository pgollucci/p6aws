######################################################################
#<
#
# Function:
#	p6_aws_opsworks_cm_server_restore(backup_id, server_name)
#
#  Args:
#	backup_id - 
#	server_name - 
#
#>
######################################################################
p6_aws_opsworks_cm_server_restore() {
    local backup_id="$1"
    local server_name="$2"
    shift 2

    p6_run_write_cmd aws opsworks-cm restore-server --backup-id $backup_id --server-name $server_name "$@"
}