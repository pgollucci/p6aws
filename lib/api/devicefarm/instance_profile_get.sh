######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_instance_profile_get(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_instance_profile_get() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm get-instance-profile --arn $arn "$@"
}