######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_project_update(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_project_update() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm update-project --arn $arn "$@"
}