######################################################################
#<
#
# Function:
#      = p6_aws_iot_ota_update_create(ota_update_id, targets, files, role_arn)
#
# Arg(s):
#    ota_update_id - 
#    targets - 
#    files - 
#    role_arn - 
#
#
#>
######################################################################
p6_aws_iot_ota_update_create() {
    local ota_update_id="$1"
    local targets="$2"
    local files="$3"
    local role_arn="$4"
    shift 4

    p6_run_write_cmd aws iot create-ota-update --ota-update-id $ota_update_id --targets $targets --files $files --role-arn $role_arn "$@"
}