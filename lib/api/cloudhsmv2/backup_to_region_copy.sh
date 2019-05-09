p6_aws_cloudhsmv2_backup_to_region_copy() {
    local destination_region="$1"
    local backup_id="$2"
    shift 2

    p6_run_write_cmd aws cloudhsmv2 copy-backup-to-region --destination-region $destination_region --backup-id $backup_id "$@"
}
