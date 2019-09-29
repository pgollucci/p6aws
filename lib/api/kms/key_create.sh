######################################################################
#<
#
# Function:
#      = p6_aws_kms_key_create(key_description, key_policy)
#
# Arg(s):
#    key_description - 
#    key_policy - 
#
#
#>
######################################################################
p6_aws_kms_key_create() {

    p6_run_write_cmd aws kms create-key "$@"
}