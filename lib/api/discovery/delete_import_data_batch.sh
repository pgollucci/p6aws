p6_aws_discovery_delete_import_data_batch() {
    local import_task_ids="$1"
    shift 1

    p6_run_write_cmd aws discovery batch-delete-import-data --import-task-ids $import_task_ids "$@"
}
