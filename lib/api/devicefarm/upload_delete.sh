######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_upload_delete(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_upload_delete() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm delete-upload --arn $arn "$@"
}