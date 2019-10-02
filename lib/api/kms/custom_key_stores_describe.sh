######################################################################
#<
#
# Function:
#	p6_aws_kms_custom_key_stores_describe()
#
#>
######################################################################
p6_aws_kms_custom_key_stores_describe() {

    p6_run_read_cmd aws kms describe-custom-key-stores "$@"
}