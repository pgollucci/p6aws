######################################################################
#<
#
# Function:
#      = p6_aws_iot_targets_for_security_profile_list(security_profile_name)
#
# Arg(s):
#    security_profile_name - 
#
#
#>
######################################################################
p6_aws_iot_targets_for_security_profile_list() {
    local security_profile_name="$1"
    shift 1

    p6_run_read_cmd aws iot list-targets-for-security-profile --security-profile-name $security_profile_name "$@"
}