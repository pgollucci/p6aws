######################################################################
#<
#
# Function:
#      = p6_aws_kms_key_description_update(key_id, description)
#
# Arg(s):
#    key_id - 
#    description - 
#
#
#>
######################################################################
p6_aws_kms_key_description_update() {
    local key_id="$1"
    local description="$2"
    shift 2

    p6_run_write_cmd aws kms update-key-description --key-id $key_id --description $description "$@"
}