######################################################################
#<
#
# Function:
#      = p6_aws_iot_security_profile_attach(security_profile_name, security_profile_target_arn)
#
# Arg(s):
#    security_profile_name - 
#    security_profile_target_arn - 
#
#
#>
######################################################################
p6_aws_iot_security_profile_attach() {
    local security_profile_name="$1"
    local security_profile_target_arn="$2"
    shift 2

    p6_run_write_cmd aws iot attach-security-profile --security-profile-name $security_profile_name --security-profile-target-arn $security_profile_target_arn "$@"
}