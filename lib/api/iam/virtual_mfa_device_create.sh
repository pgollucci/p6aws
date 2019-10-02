######################################################################
#<
#
# Function:
#	p6_aws_iam_virtual_mfa_device_create(virtual_mfa_device_name, outfile, bootstrap_method)
#
#  Args:
#	virtual_mfa_device_name - 
#	outfile - 
#	bootstrap_method - 
#
#>
######################################################################
p6_aws_iam_virtual_mfa_device_create() {
    local virtual_mfa_device_name="$1"
    local outfile="$2"
    local bootstrap_method="$3"
    shift 3

    p6_run_write_cmd aws iam create-virtual-mfa-device --virtual-mfa-device-name $virtual_mfa_device_name --outfile $outfile --bootstrap-method $bootstrap_method "$@"
}