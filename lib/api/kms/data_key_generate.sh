######################################################################
#<
#
# Function:
#	p6_aws_kms_data_key_generate(key_id)
#
#  Args:
#	key_id - 
#
#>
######################################################################
p6_aws_kms_data_key_generate() {
    local key_id="$1"
    shift 1

    p6_run_write_cmd aws kms generate-data-key --key-id $key_id "$@"
}