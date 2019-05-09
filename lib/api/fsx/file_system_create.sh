p6_aws_fsx_file_system_create() {
    local file_system_type="$1"
    local storage_capacity="$2"
    local subnet_ids="$3"
    shift 3

    p6_log_or_run aws fsx create-file-system --file-system-type $file_system_type --storage-capacity $storage_capacity --subnet-ids $subnet_ids "$@"
}
