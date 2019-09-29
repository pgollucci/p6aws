######################################################################
#<
#
# Function:
#      = p6_aws_ec2_fpga_image_create(input_storage_location)
#
# Arg(s):
#    input_storage_location - 
#
#
#>
######################################################################
p6_aws_ec2_fpga_image_create() {
    local input_storage_location="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-fpga-image --input-storage-location $input_storage_location "$@"
}