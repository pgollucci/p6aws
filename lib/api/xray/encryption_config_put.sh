######################################################################
#<
#
# Function:
#      = p6_aws_xray_encryption_config_put(type)
#
# Arg(s):
#    type - 
#
#
#>
######################################################################
p6_aws_xray_encryption_config_put() {
    local type="$1"
    shift 1

    p6_run_write_cmd aws xray put-encryption-config --type $type "$@"
}