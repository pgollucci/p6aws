######################################################################
#<
#
# Function:
#      = p6_aws_fsx_file_system_from_backup_create(backup_id, subnet_ids)
#
# Arg(s):
#    backup_id - 
#    subnet_ids - 
#
#
#>
######################################################################
p6_aws_fsx_file_system_from_backup_create() {
    local backup_id="$1"
    local subnet_ids="$2"
    shift 2

    p6_run_write_cmd aws fsx create-file-system-from-backup --backup-id $backup_id --subnet-ids $subnet_ids "$@"
}