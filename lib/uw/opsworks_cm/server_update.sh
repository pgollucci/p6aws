######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_cm_automated_backup(server_name)
#
# Arg(s):
#    server_name - 
#
#
#>
######################################################################
p6_aws_opsworks_cm_automated_backup() {
        local server_name="$1"
        shift 1

    cond_log_and_run aws opsworks-cm update-server --server-name $server_name --disable-automated-backup "$@"
}
