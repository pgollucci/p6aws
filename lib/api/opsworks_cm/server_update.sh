######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_cm_server_update(server_name)
#
# Arg(s):
#    server_name - 
#
#
#>
######################################################################
p6_aws_opsworks_cm_server_update() {
    local server_name="$1"
    shift 1

    p6_run_write_cmd aws opsworks-cm update-server --server-name $server_name "$@"
}