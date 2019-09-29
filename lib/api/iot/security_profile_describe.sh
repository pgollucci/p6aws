######################################################################
#<
#
# Function:
#      = p6_aws_iot_security_profile_describe(security_profile_name)
#
# Arg(s):
#    security_profile_name - 
#
#
#>
######################################################################
p6_aws_iot_security_profile_describe() {
    local security_profile_name="$1"
    shift 1

    p6_run_read_cmd aws iot describe-security-profile --security-profile-name $security_profile_name "$@"
}