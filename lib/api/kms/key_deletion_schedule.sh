######################################################################
#<
#
# Function:
#      = p6_aws_kms_key_deletion_schedule(key_id)
#
# Arg(s):
#    key_id - 
#
#
#>
######################################################################
p6_aws_kms_key_deletion_schedule() {
    local key_id="$1"
    shift 1

    p6_run_write_cmd aws kms schedule-key-deletion --key-id $key_id "$@"
}