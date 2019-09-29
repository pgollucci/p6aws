######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_cm_maintenance_start(server_name)
#
# Arg(s):
#    server_name - 
#
#
#>
######################################################################
p6_aws_opsworks_cm_maintenance_start() {
    local server_name="$1"
    shift 1

    p6_run_write_cmd aws opsworks-cm start-maintenance --server-name $server_name "$@"
}