######################################################################
#<
#
# Function:
#	p6_aws_iot_behaviors(security_profile_name)
#
#  Args:
#	security_profile_name - 
#
#>
######################################################################
p6_aws_iot_behaviors() {
        local security_profile_name="$1"
        shift 1

    cond_log_and_run aws iot update-security-profile --security-profile-name $security_profile_name --delete-behaviors "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_iot_alert_targets(security_profile_name)
#
#  Args:
#	security_profile_name - 
#
#>
######################################################################
p6_aws_iot_alert_targets() {
        local security_profile_name="$1"
        shift 1

    cond_log_and_run aws iot update-security-profile --security-profile-name $security_profile_name --delete-alert-targets "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_iot_additional_metrics_to_retain(security_profile_name)
#
#  Args:
#	security_profile_name - 
#
#>
######################################################################
p6_aws_iot_additional_metrics_to_retain() {
        local security_profile_name="$1"
        shift 1

    cond_log_and_run aws iot update-security-profile --security-profile-name $security_profile_name --delete-additional-metrics-to-retain "$@"
}