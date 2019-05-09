p6_aws_workspaces_workspace_image_import() {
    local ec2_image_id="$1"
    local ingestion_process="$2"
    local image_name="$3"
    local image_description="$4"
    shift 4

    p6_run_write_cmd aws workspaces import-workspace-image --ec2-image-id $ec2_image_id --ingestion-process $ingestion_process --image-name $image_name --image-description $image_description "$@"
}
