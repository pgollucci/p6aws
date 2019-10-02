######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_avs_device_register(client_id, user_code, product_id, device_serial_number, amazon_id)
#
#  Args:
#	client_id - 
#	user_code - 
#	product_id - 
#	device_serial_number - 
#	amazon_id - 
#
#>
######################################################################
p6_aws_alexaforbusiness_avs_device_register() {
    local client_id="$1"
    local user_code="$2"
    local product_id="$3"
    local device_serial_number="$4"
    local amazon_id="$5"
    shift 5

    p6_run_write_cmd aws alexaforbusiness register-avs-device --client-id $client_id --user-code $user_code --product-id $product_id --device-serial-number $device_serial_number --amazon-id $amazon_id "$@"
}