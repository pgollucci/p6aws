######################################################################
#<
#
# Function:
#	p6_aws_iam_mfa_device_deactivate(user_name, serial_number)
#
#  Args:
#	user_name - 
#	serial_number - 
#
#>
######################################################################
p6_aws_iam_mfa_device_deactivate() {
    local user_name="$1"
    local serial_number="$2"
    shift 2

    p6_run_write_cmd aws iam deactivate-mfa-device --user-name $user_name --serial-number $serial_number "$@"
}