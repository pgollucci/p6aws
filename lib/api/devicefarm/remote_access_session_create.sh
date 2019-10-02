######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_remote_access_session_create(project_arn, device_arn)
#
#  Args:
#	project_arn - 
#	device_arn - 
#
#>
######################################################################
p6_aws_devicefarm_remote_access_session_create() {
    local project_arn="$1"
    local device_arn="$2"
    shift 2

    p6_run_write_cmd aws devicefarm create-remote-access-session --project-arn $project_arn --device-arn $device_arn "$@"
}