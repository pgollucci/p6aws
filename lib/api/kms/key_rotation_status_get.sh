######################################################################
#<
#
# Function:
#      = p6_aws_kms_key_rotation_status_get(key_id)
#
# Arg(s):
#    key_id - 
#
#
#>
######################################################################
p6_aws_kms_key_rotation_status_get() {
    local key_id="$1"
    shift 1

    p6_run_read_cmd aws kms get-key-rotation-status --key-id $key_id "$@"
}