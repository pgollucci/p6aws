######################################################################
#<
#
# Function:
#      = p6_aws_kms_key_describe(key_id)
#
# Arg(s):
#    key_id - 
#
#
#>
######################################################################
p6_aws_kms_key_describe() {
    local key_id="$1"
    shift 1

    p6_run_read_cmd aws kms describe-key --key-id $key_id "$@"
}