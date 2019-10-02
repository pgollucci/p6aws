######################################################################
#<
#
# Function:
#	p6_aws_fsx_file_system_create(file_system_type, storage_capacity, subnet_ids)
#
#  Args:
#	file_system_type - 
#	storage_capacity - 
#	subnet_ids - 
#
#>
######################################################################
p6_aws_fsx_file_system_create() {
    local file_system_type="$1"
    local storage_capacity="$2"
    local subnet_ids="$3"
    shift 3

    p6_run_write_cmd aws fsx create-file-system --file-system-type $file_system_type --storage-capacity $storage_capacity --subnet-ids $subnet_ids "$@"
}