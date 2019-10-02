######################################################################
#<
#
# Function:
#	p6_aws_ecs_attachment_state_changes_submit(attachments)
#
#  Args:
#	attachments - 
#
#>
######################################################################
p6_aws_ecs_attachment_state_changes_submit() {
    local attachments="$1"
    shift 1

    p6_run_write_cmd aws ecs submit-attachment-state-changes --attachments $attachments "$@"
}