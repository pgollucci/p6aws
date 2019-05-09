p6_aws_iam_mfa_device_resync() {
    local user_name="$1"
    local serial_number="$2"
    local authentication_code1="$3"
    local authentication_code2="$4"
    shift 4

    p6_log_or_run aws iam resync-mfa-device --user-name $user_name --serial-number $serial_number --authentication-code1 $authentication_code1 --authentication-code2 $authentication_code2 "$@"
}
