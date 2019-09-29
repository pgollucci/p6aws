######################################################################
#<
#
# Function:
#      = p6_aws_workspaces_workspaces_connection_status_describe()
#
#
#
#>
######################################################################
p6_aws_workspaces_workspaces_connection_status_describe() {

    p6_run_read_cmd aws workspaces describe-workspaces-connection-status "$@"
}