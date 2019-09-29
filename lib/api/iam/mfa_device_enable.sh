######################################################################
#<
#
# Function:
#      = p6_aws_iam_mfa_device_enable(user_name, serial_number, authentication_code1, authentication_code2)
#
# Arg(s):
#    user_name - 
#    serial_number - 
#    authentication_code1 - 
#    authentication_code2 - 
#
#
#>
######################################################################
p6_aws_iam_mfa_device_enable() {
    local user_name="$1"
    local serial_number="$2"
    local authentication_code1="$3"
    local authentication_code2="$4"
    shift 4

    p6_run_write_cmd aws iam enable-mfa-device --user-name $user_name --serial-number $serial_number --authentication-code1 $authentication_code1 --authentication-code2 $authentication_code2 "$@"
}