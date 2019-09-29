######################################################################
#<
#
# Function:
#      = p6_aws_iam_virtual_mfa_device_delete(serial_number)
#
# Arg(s):
#    serial_number - 
#
#
#>
######################################################################
p6_aws_iam_virtual_mfa_device_delete() {
    local serial_number="$1"
    shift 1

    p6_run_write_cmd aws iam delete-virtual-mfa-device --serial-number $serial_number "$@"
}